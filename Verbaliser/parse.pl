% parse.pl Parses the word lists derived from identifiers/labels

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

:- module(parse, [parse/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).
:- use_module(library(apply_macros)).

:- use_module(config).
:- consult(compat).

% Module code

parse(FileName) :-
  atom_concat(FileName, 'Word.pl', InputFileName),
  atom_concat(FileName, 'Parse.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  loadList(InputFile, Words),
  maplist(parse, Words, Parses),
  saveList(OutputFile, Parses).

parse(word(Identifier,Label,Phrase), parse(Identifier,Label,Parse)) :-
  functor(Identifier, Functor, _),
  parse(Functor, Phrase, Groups),
  categorise(Functor, Groups, Parse).

% Initially we parse into three groups, then assign provisional categories

parse(literal, Phrase, [[],Phrase,[]]).
parse(datatype, Phrase, [[],Phrase,[]]).
parse(class, Phrase, Parse) :- parseClass(Phrase, Parse).
parse(namedIndividual, Phrase, Parse) :- parseClass(Phrase, Parse).
parse(objectProperty, Phrase, Parse) :- parseProperty(Phrase, Parse).
parse(dataProperty, Phrase, Parse) :- parseProperty(Phrase, Parse).

parseClass(Phrase, [W1s,W2s,W3s]) :-
  getPostmod(Phrase, W12s, W3s),
  getPremod(W12s, W1s, W2s).

getPostmod([], [], []).
getPostmod([W|Ws], [], [W|Ws]) :- prep(W), !.
getPostmod([W|Ws], [W|W12s], W3s) :- getPostmod(Ws, W12s, W3s).

getPremod([], [], []) :- !.
getPremod(W12s, W1s, [W2]) :- append(W1s, [W2], W12s).

parseProperty([W|Ws], [[W],W2s,W3s]) :- verb(W), parseProperty(Ws, [[],W2s,W3s]), !.
parseProperty(Ws, [[],W2s,[Prep]]) :- append(W2s, [Prep], Ws), prep(Prep), !.
parseProperty(Ws, [[],Ws,[]]).

categorise(Functor, [G1,G2,G3], [C1,C2,C3]) :-
  maplist(fncat(Functor,1), G1, C1),
  maplist(fncat(Functor,2), G2, C2),
  maplist(fncat(Functor,3), G3, C3).

fncat(_, _, Word, Word:number) :- numerical(Word), !.
fncat(_, _, Word, Word:prep) :- prep(Word), !.
fncat(_, _, Word, Word:aux) :- aux(Word), !.
fncat(_, _, Word, Word:conj) :- conj(Word), !.
fncat(_, _, Word, Word:det) :- det(Word), !.
fncat(class, 2, Word, Word:noun) :- !.
fncat(objectProperty, 1, Word, Word:verb) :- !.
fncat(dataProperty, 1, Word, Word:verb) :- !.
fncat(_, _, Word, Word:modifier).

verb(Word) :- aux(Word), !.
verb(Word) :- atom_concat(_, s, Word).

% Recognises atom made up of digits and possibly a decimal point
numerical(Word) :- atom_chars(Word, Chars), maplist(numChar, Chars).
numChar(Char) :- char_type(Char, digit).
numChar('.').

% DETERMINERS
det(the).
det(a).
det(an).

% AUXILIARIES
aux(is).
aux(are).
aux(was).
aux(were).
aux(will).
aux(be).
aux(must).
aux(has).
aux(have).
aux(had).

% CONJUNCTIONS
conj(and).
conj(or).
conj(not).

% PREPOSITIONS
prep(about).
prep(above).
prep(across).
prep(afore).
prep(after).
prep(against).
prep(along).
prep(alongside).
prep(amid).
prep(among).
prep(amongst).
prep(apropos).
prep(around).
prep(as).
prep(aside).
prep(astride).
prep(at).
prep(athwart).
prep(before).
prep(behind).
prep(below).
prep(beneath).
prep(beside).
prep(between).
prep(beyond).
prep(by).
prep(circa).
prep(down).
prep(during).
prep(for).
prep(from).
prep(in).
prep(into).
prep(of).
prep(on).
prep(onto).
prep(over).
prep(per).
prep(to).
prep(under).
prep(up).
prep(with).
prep(within).
