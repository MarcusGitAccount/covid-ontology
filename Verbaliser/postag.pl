% postag.pl Reading XML output from CLAWS POS tagger 

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

:- module(postag, [postag/1,run5/0,run7/0]).

:- use_module(library(lists)).
:- use_module(library(pillow)).
%:- use_module(pillow, [html2terms/2]).
:- use_module(save, [saveList/2]).
:- use_module(config). 
:- consult(compat).

% Module code

% Identifiers for individuals, classes and properties with tags from CLAWS5 or CLAWS7

run5 :-
  postag('../results/name5'),
  postag('../results/noun5'),
  postag('../results/verb5').

run7 :-
  postag('../results/name7'),
  postag('../results/noun7'),
  postag('../results/verb7').

% Accept a file in XML and transcodes to Prolog terms

postag(FileName) :-
  atom_concat(FileName, '.pos', InputFileName),
  atom_concat(FileName, '.pl', OutputFile1Name),
  atom_concat(FileName, 'pat.pl', OutputFile2Name),
  atom_concat(FileName, 'word.pl', OutputFile3Name),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFile1Name, OutputFile1),
  atom_concat(DirectorySlash, OutputFile2Name, OutputFile2),
  atom_concat(DirectorySlash, OutputFile3Name, OutputFile3),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  read_xml_file(InputFile, List),
  getPos(List, UnsortedTerms),
  sort(UnsortedTerms, Terms),
  saveList(OutputFile1, Terms),
  getPatterns(Terms, Patterns),
  saveList(OutputFile2, Patterns),
  getWords(Terms, Words),
  saveList(OutputFile3, Words).
  
read_xml_file(FileName, Term) :-
  read_ascii_file(FileName, List),
  html2terms(List, DirtyTerm),
  clean_term(DirtyTerm, Term).

read_ascii_file(FileName, List) :-
  open(FileName, read, Stream),
  read_ascii(Stream, List),
  close(Stream).

read_ascii(Stream, List) :-
  get_code(Stream, Ascii),
  read_ascii(Stream, Ascii, List).
  
read_ascii(_Stream, -1, []) :- !.
read_ascii(Stream, Ascii, [Ascii|List]) :- read_ascii(Stream, List).

% Cleaning the input list by removing opening and closing stuff that
% lies outside normal XML

cleanList(List, CleanList) :-
  moveTo(List, ' ', List1),
  moveTo(List1, ' ', List2),
  reverse(List2, RevList),
  moveTo(RevList, ' ', RevList1),
  moveTo(RevList1, ' ', RevList2),
  reverse([' '|RevList2], List3),
  atom_codes('<Ontology>', Chars),
  append(Chars, List3, CleanList).

moveTo([Char|List], Char, List) :- !.
moveTo([_|List], Char, NewList) :- moveTo(List, Char, NewList).

% Cleaning up the term

clean_term(env(A,B,C), env(A,CleanB,CleanC)) :-
  clean_term(B, CleanB),
  clean_term(C, CleanC), !.

clean_term(A=B, A=B) :-
  atomic(B), !.

clean_term(A=B, A=CleanB) :-
  name(CleanB, B), !.

clean_term([Item|Dirty], Clean) :-
  white_space_list(Item),
  clean_term(Dirty, Clean), !.

clean_term([Item|Dirty], [CleanItem|Clean]) :-
  character_list(Item),
  name(CleanItem, Item),
  clean_term(Dirty, Clean), !.

clean_term([DirtyHead|DirtyTail], [CleanHead|CleanTail]) :-
  clean_term(DirtyHead, CleanHead),
  clean_term(DirtyTail, CleanTail).

clean_term(Term, Term) :- !.

white_space_list([Char]) :-
  white_space_char(Char), !.

white_space_list([Char|List]) :-
  white_space_char(Char),
  white_space_list(List).

character_list([Char]) :-
  integer(Char), !.

character_list([Char|List]) :-
  integer(Char),
  character_list(List).

white_space_char(X) :- char_code(X,10).
white_space_char(X) :- char_code(X,32).

% Group into POS-tagged phrases

getPos([], []).

getPos(EnvList, [Pos|PosList]) :-
  nextGroup(EnvList, Group, EnvRest),
  makePos(Group, Pos),
  getPos(EnvRest, PosList).

nextGroup([], [], []).
nextGroup([Env|EnvList], [], EnvList) :- Env = env(w, _, [';']), !.
nextGroup([Env|EnvList], [Env|Group], EnvRest) :- nextGroup(EnvList, Group, EnvRest).

makePos(Group, pos(Words)) :- makeWords(Group, Words).

makeWords([], []).
makeWords([Env|Group], [Word|Words]) :- makeWord(Env, Word), makeWords(Group, Words).

makeWord(env(w,[_,pos=POS],[Word]), Word:POS).

% Extracting patterns based on POS tags

getPatterns(PosList, Patterns) :-
  getPats(PosList, AllPats),
  sort(AllPats, Pats),
  getFrequencies(Pats, AllPats, UnsortedPatterns),
  sort(UnsortedPatterns, SortedPatterns),
  reverse(SortedPatterns, Patterns).

getPats([], []).
getPats([Pos|PosList], [Pat|PatList]) :- getPat(Pos, Pat), getPats(PosList, PatList).

getPat(pos(Words), pat(POSs)) :- word2pos(Words, POSs).

word2pos([], []).
word2pos([(_:POS)|Words], [POS|POSs]) :- word2pos(Words, POSs).

% Extracting words with their POS tags

getWords(PosList, Words) :-
  getWPs(PosList, AllWPs),
  sort(AllWPs, WPs),
  getFrequencies(WPs, AllWPs, UnsortedWords),
  sort(UnsortedWords, SortedWords),
  reverse(SortedWords, Words).

getWPs([], []).

getWPs([Pos|PosList], WPs) :-
  getPosWPs(Pos, WPs1),
  getWPs(PosList, WPs2),
  append(WPs1, WPs2, WPs).

getPosWPs(pos(Words), Words).

getFrequencies([], _Terms, []).

getFrequencies([P|Ps], Terms, [(F:P)|Fs]) :-
  getFrequency(P, Terms, F),
  getFrequencies(Ps, Terms, Fs).

getFrequency(Pattern, Terms, Frequency) :-
  findall(P, match(Terms, Pattern, P), Ps),
  length(Ps, Frequency).

match(Terms, Pattern, P) :- member(P, Terms), P=Pattern.
