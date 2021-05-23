% collate.pl Collate all the data on functor frequency and store in data.txt 

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

:- module(collate, [collate1/0, collate2/0]).

:- use_module(library(lists)).
:- use_module(library(system)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(config). 
:- consult(compat).


% Module code

% Functors
collate1 :-
  getNames(Names),
  getNameFunctors(Names, FunctorLists),
  collate(FunctorLists, Unsorted),
  sort(Unsorted, Reversed),
  reverse(Reversed, Functors),
  saveList('../results/data0.txt', Functors).

% Lexical entries
collate2 :-
  getNames(Names),
  getEntries(Names, UnsortedEntries), 
  sort(UnsortedEntries, Entries),
  getPhrases(Entries, Phrases),
  saveList('../results/entries2.txt', Phrases).

% Ignore the hidden folders '..' and '.'
getNames(Names) :-
  directory_files('../ELsample', Files),
  sort(Files, [_,_|Names]).

getNameFunctors([], []).
getNameFunctors([N|Ns], [F|Fs]) :- getFunctors(N, F), getNameFunctors(Ns, Fs).

getFunctors(Name, Functors) :-
  ontologyDirectory(Directory),
  atom_concat([Directory,Name,'/',Name,'Functor.pl'], InputFileName),
  loadList(InputFileName, Functors).

getEntries([], []).
getEntries([N|Ns], Es) :- getLex(N, E1), getEntries(Ns, E2), append(E1, E2, Es).

getLex(Name, Entries) :-
  atom_concat(['../ELsample/',Name,'/',Name,'Lexicon.pl'], InputFileName),
  loadList(InputFileName, Entries).

getPhrases([], []).
getPhrases([E|Es], [P|Ps]) :- getPhrase(E, P), getPhrases(Es, Ps).

getPhrase(lex(_,Cat,Phrase), Cat:Phrase).

collate([], []).
collate([L|Ls], Functors) :- collate(Ls, Fs), collate(L, Fs, Functors).

collate([], Fs, Fs).
collate([P|Ps], Fs, Functors) :- addPattern(P, Fs, NewFs), collate(Ps, NewFs, Functors).

% addPattern(_N:Term, [], [1:Term]).
addPattern(P, [], [P]).
% addPattern(_N:Term, [(M:Term)|Fs], [(NM:Term)|Fs]) :- NM is 1+M, !.
addPattern(N:Term, [(M:Term)|Fs], [(NM:Term)|Fs]) :- NM is N+M, !.
addPattern(P, [Next|Fs], [Next|NewFs]) :- addPattern(P, Fs, NewFs).

atom_concat([], '').
atom_concat([A|As], Atom) :- atom_concat(As, A1), atom_concat(A, A1, Atom).
