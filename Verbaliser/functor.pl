% functor.pl Identify all the functor patterns in an ontology in Prolog form 

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

:- module(functor, [functor/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(config). 
:- consult(compat).

% Module code

functor(FileName) :-
  atom_concat(FileName, 'Standard.pl', InputFileName),
  atom_concat(FileName, 'Functor.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, Terms),
  generatePatterns(Terms, UnsortedPatterns),
  sort(UnsortedPatterns, Patterns),
  getFrequencies(Patterns, UnsortedPatterns, UnsortedFrequencies),
  sort(UnsortedFrequencies, SortedFrequencies),
  reverse(SortedFrequencies, Frequencies),
  saveList(OutputFile, Frequencies).

generatePatterns([], []).

generatePatterns([Term|Terms], Pats) :-
  getPat(Term, Pat),
  getParts(Pat, Pats1),
  generatePatterns(Terms, Pats2),
  append(Pats1, Pats2, Pats).

getPat(Term, Pat) :-
  functor(Term, Functor, _), 
  member(Functor, [namedIndividual, class, objectProperty, dataProperty, datatype, literal, iri]),
  capitalise(Functor, Pat), !.

getPat(Term, Pat) :-
  Term =.. [Functor|Args],
  getArgPats(Args, Pats),
  Pat =.. [Functor|Pats], !.

getPat(Term, Term).

getArgPats([], []).

getArgPats([A|As], [P|Ps]) :-
  getPat(A, P),
  getArgPats(As, Ps).

% Return all parts of a pattern

getParts(Pat, [Pat|Parts]) :-
  Pat =.. [_|Args],
  getArgParts(Args, Parts).

getArgParts([], []).
getArgParts([A|As], Parts) :- getParts(A, P1), getArgParts(As, P2), append(P1, P2, Parts).

capitalise(Word, CapWord) :-
  name(Word, [C|Chars]),
  NewC is C-32,
  atom_codes(CapWord, [NewC|Chars]).

getFrequencies([], _Terms, []).

getFrequencies([P|Ps], Terms, [(F:P)|Fs]) :-
  getFrequency(P, Terms, F),
  getFrequencies(Ps, Terms, Fs).

getFrequency(Pattern, Terms, Frequency) :-
  findall(P, match(Terms, Pattern, P), Ps),
  length(Ps, Frequency).

match(Terms, Pattern, P) :- member(P, Terms), P=Pattern.

