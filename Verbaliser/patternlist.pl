% patternlist.pl 
%  Output a list of lists of the axioms that match each abstract axiom pattern.

% E.g., if abstract pattern is: subClassOf(Class,Class).
% pattern list could be:
%       subClassOf(Class(iri='#Yoga'),Class(iri='#Relaxation'). 
%       subClassOf(Class(iri='#Sunbathing'),Class(iri='#Relaxation').

% Written by Sandra Williams
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

:- module(patternlist, [patternlist/1, patternlist/3]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).
:- use_module(config). 
:- consult(compat).

% Module code

patternlist(FileName) :- 
  atom_concat(FileName, 'PatternLists.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

patternlist(FileName) :- 
%  atom_concat(FileName, 'Standard.pl', InputFile1Name),
  atom_concat(FileName, 'Select.pl', InputFile1Name),
  atom_concat(FileName, 'Pattern.pl', InputFile2Name),
  atom_concat(FileName, 'PatternLists.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFile1Name, InputFile1),
  atom_concat(DirectorySlash, InputFile2Name, InputFile2),
  loadList(InputFile1, Terms),
  loadList(InputFile2, Patterns),
  genPatternLists(Terms, Patterns, PLists),
  saveList(OutputFile, PLists).

% called from definitions.pl - no I/O files
patternlist(Terms, Patterns, PLists) :- 
  genPatternLists(Terms, Patterns, PLists).

genPatternLists(_, [], []).  

genPatternLists(EL, [_:P|Ps], [PList|PLists]) :- 
  genPList(EL, P, PList), 
  genPatternLists(EL, Ps, PLists).  

genPList(EL, Pat, PList) :-   
  findall(P, matchPattern(Pat, EL, P), PList).

matchPattern(Pat, [Term|_], Term) :- 
  matchPat(Pat, Term).

matchPattern(Pat, [_|Terms], T) :-
  matchPattern(Pat, Terms, T).

matchPat(Pat, Term) :-
  Pat =.. [Functor|PArgs],
  Term =.. [Functor|TArgs], 
  matchPatArgs(PArgs, TArgs).

matchPat(Pat, Term) :-
  member(Pat, ['NamedIndividual', 'Class', 'ObjectProperty', 'DataProperty', 'Datatype', 'Literal']),
  functor(Term, F, _),
  capitalise(F, Pat).
  
matchPatArgs([], []).

matchPatArgs([P|Pats], [T|Ts]) :-
  matchPat(P, T),
  matchPatArgs(Pats, Ts).


capitalise(Word, CapWord) :-
  name(Word, [C|Chars]),
  NewC is C-32,
  atom_codes(CapWord, [NewC|Chars]).


