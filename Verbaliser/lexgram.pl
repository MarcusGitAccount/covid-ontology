% lexgram.pl grammar of terms
%
% Written by Richard Power
% Copyright (c) 2011 by Computing Department, The Open University
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

:- module(lexgram, [lexgram/2, generate/2]).

:- use_module(library(lists)).
:- use_module(library(system)).
:- use_module(library(apply-macros)).

%==================================================

generate(List, Term) :- g(Term, List, []).

lexgram(Atom, Term) :-
  listWords(Atom, List),
  g(Term, List, []).

listWords(Atom, List) :-
  atom_chars(Atom, Chars),
  charWords(Chars, List).

charWords([], ['']).
charWords([' '|Chars], [''|Words]) :- charWords(Chars, Words), !.
charWords([C|Chars], [CW|Words]) :- charWords(Chars, [W|Words]), atom_concat(C, W, CW).

% Groups can be either class or property

g(class) --> preMod, headNoun, postMod.
g(property) --> headVerb, preMod, preposition.

headNoun --> lex(noun).
headVerb --> lex(auxiliary).
headVerb --> lex(verb).

preMod --> [].
preMod --> modifier.
preMod --> modifier, modifier.

modifier --> lex(noun).
modifier --> lex(adjective).
modifier --> lex(mass).
modifier --> lex(name).
modifier --> lex(number).
modifier --> lex(participle).

postMod --> [].
postMod --> lex(preposition), preMod.

preposition --> [].
preposition --> lex(preposition).

lex(Category) --> {lex(Word,Category)}, [Word].

% Lexicon

lex('Bert', name).
lex('Ford', name).
lex(van, noun).
lex(man, noun).
lex(driver, noun).
lex(old, adjective).
lex(milk, mass).
lex('1985', number).
lex(driven, participle).
lex(is, auxiliary).
lex(has, auxiliary).
lex(owns, verb).
lex(of, preposition).
lex(by, preposition).


