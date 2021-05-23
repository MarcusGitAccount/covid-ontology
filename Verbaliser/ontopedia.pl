% ontopedia.pl Constructs ontopedia data for set of ontologies

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

:- module(ontopedia, [ontopedia/0,ontopedia/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2,saveList/2]).
:- use_module(library(system)).
:- use_module(config). 

:- consult(compat).

% Module code

% ontopedia :- ontopedia(['ODP1.owl', 'ODP2.owl','ODP3.owl']).
ontopedia :- ontopedia([kemnay, building]).

ontopedia(List) :-
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  makeIndex(List, DirectorySlash, []-Ontopedia),
  atom_concat(DirectorySlash, 'ontopediaData.pl', OutputFile),
  saveList(OutputFile, Ontopedia).
  
makeIndex([], _, Ontopedia-Ontopedia).
makeIndex([F|Fs], Dir, In-Out) :- addIndex(F, Dir, In-Next), makeIndex(Fs, Dir, Next-Out).

addIndex(F, Dir, In-Out) :-
  atom_concat(F, 'Index.pl', FileName),
  atom_concat(Dir, FileName, PathName),
  loadList(PathName, New),
  combine(F, New, In-Out).

combine(F, New, In-Out) :-
  getWords(New, Words),
  addWords(Words, F, New, In-Out).

getWords([], []).
getWords([X|Xs], [X|Ws]) :- functor(X, word, _), getWords(Xs, Ws), !.
getWords([_|Xs], Ws) :- getWords(Xs, Ws).

addWords([], _F, _New, Out-Out).
addWords([W|Ws], F, New, In-Out) :- addWord(W, F, New, In-Next), addWords(Ws, F, New, Next-Out).

addWord(word(W,Identifiers), F, Data, In-Out) :-
  findWordEntry(In, W, OldEntry, Others),
  addWordEntry(Identifiers, F, Data, OldEntry-NewEntry),
  Unsorted = [NewEntry|Others],
  sort(Unsorted, Out).

findWordEntry([], W, entry(W,[]), []).
findWordEntry([E|Es], W, E, Es) :- E = entry(W,_), !.
findWordEntry([E|Es], W, WE, [E|Others]) :- findWordEntry(Es, W, WE, Others).

% Go through the identifiers containing the word and add them to the old entry

addWordEntry([], _F, _Data, Entry-Entry).

addWordEntry([I|Is], F, Data, OldEntry-NewEntry) :-
  addIdentifier(I, F, Data, OldEntry-NextEntry),
  addWordEntry(Is, F, Data, NextEntry-NewEntry).

addIdentifier(I, F, Data, entry(W,OldPs)-entry(W,NewPs)) :-
  memberchk(entry(I,P,S), Data),
  findPhrase(OldPs, P, OldPhrase, Others),
  addPhrase(entry(I,P,S), F, OldPhrase-NewPhrase),
  Unsorted = [NewPhrase|Others],
  orderPhrases(W, Unsorted, NewPs).

findPhrase([], P, phrase(P,[]), []).
findPhrase([Phrase|Phrases], P, Phrase, Phrases) :- Phrase = phrase(P,_), !.
findPhrase([Phrase|Phrases], P, Phr, [Phrase|Others]) :- findPhrase(Phrases, P, Phr, Others).

addPhrase(entry(I,P,S), F, phrase(P,Old)-phrase(P,New)) :- New = [link(F,I,S)|Old].

% The phrase comprising the word only comes first, then phrases beginning with
% the word, then others, sorted alphabetically within each category
% [IT WOULD BE BETTER TO KEEP THESE THREE AS SEPARATE LISTS EVENTUALLY]

orderPhrases(Word, Old, New) :-
  classifyPhrases(Word, Old, Left, Right),
  sort(Left, SortedLeft),
  sort(Right, SortedRight),
  append(SortedLeft, SortedRight, New).

classifyPhrases(_W, [], [], []).
classifyPhrases(W, [P|Ps], [P|Ls], Rs) :- P=phrase(W,_), classifyPhrases(W, Ps, Ls, Rs), !.
classifyPhrases(W, [P|Ps], Ls, [P|Rs]) :- classifyPhrases(W, Ps, Ls, Rs).




