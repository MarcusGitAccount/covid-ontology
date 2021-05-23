% label.pl Stores labels in separate file as label/2 terms

% Written by Richard Power
% Copyright (c) 2009 by Open University
% 
% This package is free software; you can redistribute it and/or
% modify it under the terms of the GNU Library General Public
% License as published by the Free Software Foundation; either
% version 3 of the License, or (at your option) any later version.
% 
% The package is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
% Library General Public License for more details.
% 
%==================================================

:- module(label, [label/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

label(FileName) :-
  atom_concat(FileName, 'Label.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

label(FileName) :-
  atom_concat(FileName, 'Standard.pl', InputFileName),
  atom_concat(FileName, 'Label.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, Terms),
  labelTerms(Terms, UnsortedLabels),
  sort(UnsortedLabels, Labels),
  saveList(OutputFile, Labels).

labelTerms([], []).
labelTerms([T|Ts], [L|Ls]) :- labelTerm(T, L), labelTerms(Ts, Ls), !.
labelTerms([_|Ts], Ls) :- labelTerms(Ts, Ls).

labelTerm(T, label(Identifier, Label)) :-
  T = annotationAssertion(P, Id, Lb),
  P = annotationProperty('http://www.w3.org/2000/01/rdf-schema#label'),
  standardIdentifier(Id, Identifier),
  standardLabel(Lb, Label).

% For now just keep the atoms without using iri/1 or literal/1

standardIdentifier(iri(X), X) :- !.
standardIdentifier(X, X).

standardLabel(literal(X), X) :- !.
standardLabel(literal('xml:lang'=en,X), X) :- !.
standardLabel(literal(datatypeiri='http://www.w3.org/2001/XMLSchema#string',X), X) :- !.
standardLabel(literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#string',X), X) :- !.
standardLabel(X, X).
