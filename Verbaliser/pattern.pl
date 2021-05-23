% pattern.pl Identify all the axiom patterns in an ontology in Prolog form 

% Written by Richard Power
% Modified by Sandra Williams (added pattern/2)
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

:- module(pattern, [pattern/1, pattern/2]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

pattern(FileName) :-
  atom_concat(FileName, 'Pattern.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

pattern(FileName) :-
  atom_concat(FileName, 'Standard.pl', InputFileName),
  atom_concat(FileName, 'Pattern.pl', OutputFileName),
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

% no I/O files, called from definitions.pl
pattern(Terms, Frequencies) :-
  generatePatterns(Terms, UnsortedPatterns),
  sort(UnsortedPatterns, Patterns),
  getFrequencies(Patterns, UnsortedPatterns, UnsortedFrequencies),
  sort(UnsortedFrequencies, SortedFrequencies),
  reverse(SortedFrequencies, Frequencies).

generatePatterns([], []).

generatePatterns([Term|Terms], [Pat|Pats]) :-
  getPat(Term, Pat),
  generatePatterns(Terms, Pats).

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

