% word.pl Given lists of names from an ontology, list their constituent words 

% Written by Richard Power
% Copyright (c) 2011 by Open University
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

:- module(word, [word/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config).
:- consult(compat).

% Module code

word(FileName) :-
  atom_concat(FileName, 'Label.pl', InputFile1Name),
  atom_concat(FileName, 'Identifier.pl', InputFile2Name),
  atom_concat(FileName, 'Word.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFile1Name, InputFile1),
  atom_concat(DirectorySlash, InputFile2Name, InputFile2),
  loadList(InputFile1, Labels),
  loadList(InputFile2, Identifiers),
  getLex(Labels, Identifiers, Words),
  saveList(OutputFile, Words).

getLex(_, [], []).
getLex(_, [end_of_file],[]).
getLex(_, [], [end_of_file]).

getLex(Labels, [N|Ns], [L|Ls]) :-
  getEntry(Labels, N, L),
  getLex(Labels, Ns, Ls).

getEntry(Labels, Identifier, word(Identifier, Label, Phrase)) :-
  getName(Identifier, Name, _),
  getLabel(Labels, Name, Label),
  getPhrase(Identifier, Name, Label, Phrase).

% Special case of a literal with no label
getPhrase(Identifier, Name, nolabel, [Name]) :-
  functor(Identifier, literal, _), !.

getPhrase(_Identifier, Name, Label, Phrase) :-
  getPhrase(Name, Label, Phrase).

% Special case of a number (probably taken care of by literal now)
getPhrase(N, _Label, Phrase) :-
  number(N), number_codes(N, Chars), atom_codes(Phrase, Chars), !.

% No label, so use the identifier name and assume words are separated by
% capital letters and underscores
getPhrase(Name, nolabel, Phrase) :-
  removeNameSpace(Name, CoreName),
  name(CoreName, Chars),
  listWords(Chars, Phrase).

% Use the label, assuming that words are separated only by spaces/underlines
getPhrase(_Name, Label, Phrase) :-
  name(Label, Chars),
  labelWords(Chars, Phrase).

getName(namedIndividual(Name), Name, name).
getName(literal(_DataType,Name), Name, name).
getName(literal(_DataType=_IRI), 'Undefined literal', name).
getName(literal(Name), Name, name).
getName(class(Name), Name, noun).
getName(datatype(Name), Name, noun).
getName(objectProperty(Name), Name, verb).
getName(dataProperty(Name), Name, verb).

% If there is no satisfactory label statement, return nolabel
getLabel(Labels, Name, Label) :- member(label(Name,Label), Labels), atom(Label), !.
getLabel(_Labels, _Name, nolabel).

removeNameSpace(Name, NewName) :-
  name(Name, List),
  reverse(List, RevList),
  pruneList(RevList, RevNewList),
  reverse(RevNewList, NewList),
  atom_codes(NewName, NewList), !.

removeNameSpace(Name, Name).

% Stop when you hit # or /

pruneList([], []).
pruneList([C|_List], []) :- member(C, [35, 47, 92]), !.
pruneList([C|List], [C|NewList]) :- pruneList(List, NewList).

% Predicting a word list from characters of an ontology name

listWords([], []).

listWords(Chars, [Word|Words]) :-
  removeSpaces(Chars, NextChars),
  getWord(NextChars, WordChars, NewChars),
  atom_codes(Word, WordChars),
  listWords(NewChars, Words).

% Recovering words separated by spaces or underlines in a character code list

labelWords([], []).

labelWords(Chars, [Word|Words]) :-
  nextWord(Chars, WordChars, NewChars),
  atom_codes(LWord, WordChars),
  downcase_atom(LWord, Word),
  labelWords(NewChars, Words).

removeSpaces([C|Chars], [C|Chars]) :- alphanumeric(C), !.
removeSpaces([_|Chars], NewChars) :- removeSpaces(Chars, NewChars).

alphanumeric(C) :- lowerCase(C).
alphanumeric(C) :- upperCase(C).
alphanumeric(C) :- numerical(C).

lowerCase(C) :- name('abcdefghijklmnopqrstuvwxyz', List), member(C, List).
upperCase(C) :- name('ABCDEFGHIJKLMNOPQRSTUVWXYZ', List), member(C, List).
numerical(C) :- name('0123456789', List), member(C, List).

getWord([C1,C2|Chars], [C1], [C3|Chars]) :-
  lowerCase(C1),
  upperCase(C2),
  uncapitalise(C2, C3), !.

getWord([C1|Chars], [C2|WordChars], NewChars) :-
  alphanumeric(C1),
  uncapitalise(C1, C2),
  getWord(Chars, WordChars, NewChars), !.

getWord([_|Chars], [], Chars).
getWord([], [], []).

% Finding next word using spaces as separators
nextWord([], [], []) :- !.
nextWord([C,32|Rest], [C], Rest) :- !.
nextWord([32|Cs], Next, Rest) :- nextWord(Cs, Next, Rest), !.
nextWord([C,95|Rest], [C], Rest) :- !.
nextWord([95|Cs], Next, Rest) :- nextWord(Cs, Next, Rest), !.
nextWord([C|Cs], [C|Next], Rest) :- nextWord(Cs, Next, Rest).

capitalise(Word, CapWord) :-
  name(Word, [C|Chars]),
  lowerCase(C),
  NewC is C-32,
  atom_codes(CapWord, [NewC|Chars]), !.

capitalise(Word, Word) :- atom(Word).

capitalise(Integer, Word) :- integer(Integer), integerAtom(Integer, Word).

% Only for characters

uncapitalise(C1, C2) :- upperCase(C1), C2 is C1+32, !.
uncapitalise(C, C).

integerAtom(Integer, Atom) :-
  number_chars(Integer, Chars),
  atom_chars(Atom, Chars).

