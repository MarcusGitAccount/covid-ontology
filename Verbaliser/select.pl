% select.pl Keep the axioms and discard the rest

% Written by Richard Power
% Copyright (c) 2010 by Open University
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

:- module(select, [select/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

select(FileName) :-
  atom_concat(FileName, 'Select.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

select(FileName) :-
  atom_concat(FileName, 'Standard.pl', InputFileName),
  atom_concat(FileName, 'Select.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, Terms),
  selectAxioms(Terms, Axioms),
  saveList(OutputFile, Axioms).

selectAxioms([], []).
selectAxioms([T|Ts], As) :- nonAxiom(T), selectAxioms(Ts, As), !.
selectAxioms([T|Ts], [T|As]) :- selectAxioms(Ts, As).

% Disallow senseless axioms such as equivalentClasses with one argument
nonAxiom(equivalentClasses(_Class)).
nonAxiom(disjointClasses(_Class)).
nonAxiom(sameIndividual(_Individual)).
nonAxiom(differentIndividuals(_Individual)).

% Disallow statements that are not axioms
nonAxiom(T) :- functor(T, F, _), naf(F).

% Disallow statements with arguments including anonymous individuals
nonAxiom(T) :- T =.. [_|Args], memberchk(anonymousIndividual(_), Args).

% Non-Axiom Functor
naf(annotationAssertion).
naf(annotationProperty).
naf(annotationPropertyDomain).
naf(annotationPropertyRange).
naf(annotation).
naf(declaration).
naf(label).
naf(import).