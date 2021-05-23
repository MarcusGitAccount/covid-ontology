% identifier.pl List the identifiers and constants from EL++ terms

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

:- module(identifier, [identifier/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

identifier(FileName) :-
  atom_concat(FileName, 'Identifier.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

identifier(FileName) :-
  atom_concat(FileName, 'Standard.pl', InputFileName),
  atom_concat(FileName, 'Identifier.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, Terms),
  getIdentifiers(Terms, UnsortedIdentifiers),
  sort(UnsortedIdentifiers, Identifiers),
  saveList(OutputFile, Identifiers).

getIdentifiers([], []).

getIdentifiers([T|Ts], Ids) :-
  getIds(T, Ids1),
  getIdentifiers(Ts, Ids2),
  append(Ids1, Ids2, Ids), !.

% Don't retrieve the comments messages from annotation assertions
getIds(Term, []) :- functor(Term, annotationAssertion, _), !.

getIds(Term, [Term]) :- functor(Term, namedIndividual, 1), !.
getIds(Term, [Term]) :- functor(Term, class, 1), !.
getIds(Term, [Term]) :- functor(Term, objectProperty, 1), !.
getIds(Term, [Term]) :- functor(Term, dataProperty, 1), !.
getIds(Term, [Term]) :- functor(Term, datatype, 1), !.
getIds(Term, [Term]) :- functor(Term, literal, _), !.

getIds(Term, Ids) :-
  Term =.. [_Functor|Args],
  getArgIds(Args, Ids), !.

getIds(_Term, []).

getArgIds([], []).

getArgIds([A|As], Ids) :-
  getIds(A, Ids1),
  getArgIds(As, Ids2),
  append(Ids1, Ids2, Ids).

