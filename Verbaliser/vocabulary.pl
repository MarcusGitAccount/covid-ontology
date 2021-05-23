% vocabulary.pl Lists words along with parsed identifiers in which they occur

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

:- module(vocabulary, [vocabulary/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).
:- use_module(library(apply_macros)).

:- use_module(config).
:- consult(compat).

% Module code

vocabulary(FileName) :-
  atom_concat(FileName, 'Parse.pl', InputFileName),
  atom_concat(FileName, 'Vocabulary.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  loadList(InputFile, Parses),
  vocabulary(Parses, Vocabulary),
  saveList(OutputFile, Vocabulary).

vocabulary(Parses, Vocabulary) :-
  maplist(contentWords, Parses, Phrases),
  append(Phrases, WordCats),
  sort(WordCats, Pairs),
  maplist(wordPart, Pairs, Words),
  maplist(wordCategories(Pairs), Words, Unsorted),
  sort(Unsorted, Sorted),
  maplist(contexts(Parses), Sorted, Contexts),
  maplist(revise, Contexts, Revised),
  sort(Revised, Vocabulary).

contentWords(parse(_,_,Groups), ContentWords) :-
  append(Groups, AllWords),
  include(contentWord, AllWords, ContentWords).

contentWord(_:noun).
contentWord(_:number).
contentWord(_:verb).
contentWord(_:modifier).
contentWord(_:name).

wordPart(W:_, W).
wordCategories(Pairs, W, W:Cs) :- findall(C, member(W:C, Pairs), Cs).

% For each word, list contexts
contexts(Parses, Word:Categories, vocab(Word, Categories, Contexts)) :-
  include(wordParses(Word), Parses, WordParses),
  maplist(wordContext, WordParses, Contexts).

wordParses(Word, parse(_,_,Groups)) :-
  append(Groups, AllWords),
  memberchk(Word:_, AllWords).

wordContext(parse(Identifier,_,Groups), context(Identifier,Groups)).

% Second pass: upgrade some modifiers to nouns, others to names.

revise(vocab(Word,Cats,_Context), vocab([noun],Word)) :-
  (Cats=[noun,modifier]; Cats=[modifier,noun]), !.

revise(vocab(Word,[modifier],Context), vocab([name],Word)) :-
  partition(individualEntity, Context, [_|_], []), !.

revise(vocab(Word,Cats,_Context), vocab(Cats,Word)) :-
  length(Cats, Length),
  (Length=1; writeln(vocab(Word,Cats))).
  
individualEntity(context(namedIndividual(_),_)).




