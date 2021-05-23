% english.pl English inflections
%
% Written by Richard Power
% Modified by Sandra Williams (added rule for 'es' after 'ch')
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

:- module(english, [inflection/3]).

:- use_module(library(lists)).

% module code

% To compute an inflection, first classify the word according to the spelling
% of its base form, and then perform a suitable operation on this form.

inflection(Type, Base, Inflection) :-
  split_atom(Base, Letters),
  classify_pattern(Letters, Pattern),
  add_suffix(Pattern, Type, Letters, NewLetters),
  concat_atom(NewLetters, Inflection).

split_atom(Atom, Letters) :-
  name(Atom, List),
  list_letters(List, Letters).

list_letters([], []) :- !.
list_letters([C|Cs], [L|Ls]) :- name(L, [C]), list_letters(Cs, Ls).

% First pattern: consonant plus Y

classify_pattern(Letters, consonant_y) :-
  append([_|_], [Penultimate, y], Letters),
  consonant(Penultimate), !.

% Second pattern: final e

classify_pattern(Letters, final_e) :-
  append([_|_], [e], Letters), !.

% Third pattern: Vowel plus short consonant

classify_pattern(Letters, vowel_consonant) :-
  append([_|_], [Vowel, Consonant], Letters),
  vowel(Vowel),
  short_consonant(Consonant), !.

% Fourth pattern: sh or ch 

classify_pattern(Letters, final_sh) :-
  append([_|_], [X, h], Letters), 
  memberchk(X, [c,s]), !.

% Fifth pattern: s or x

classify_pattern(Letters, final_sx) :-
  append([_|_], [S], Letters),
  memberchk(S, [s,x]), !.

% Fifth pattern: ing (% works for "are sightseeing" but not "are strings")
% classify_pattern(Letters, final_ing) :-
%  append([_|_], [i,n,g], Letters),  !.

% Sixth pattern: none of the above

classify_pattern(_Letters, normal).

% Letter classes

consonant(Letter) :- \+ vowel(Letter).

vowel(Letter) :- memberchk(Letter, [a,e,o,i,u]).

short_consonant(Letter) :- memberchk(Letter, [b,c,d,f,g,l,m,n,p,r,t]).

% Adding the suffix: the result depends on the pattern

% For consonant_y, replace the y by ie before adding s or d

%add_suffix(consonant_y, ing, Letters, NewLetters) :-
%   append(Letters, [i,n,g], NewLetters), !.

% add_suffix(final_ing, s, Letters, Letters) :-  % works for "are sightseeing" but not "are strings"
 %  !.

add_suffix(consonant_y, Suffix, Letters, NewLetters) :-
  append(Stem, [y], Letters),
  append(Stem, [i,e,Suffix], NewLetters), !.

% For final_e, add s or d for present/past, and take off e for progressive

add_suffix(final_e, ing, Letters, NewLetters) :-
  append(Stem, [e], Letters),
  append(Stem, [i,n,g], NewLetters), !.

add_suffix(final_e, Suffix, Letters, NewLetters) :-
  append(Letters, [Suffix], NewLetters), !.

% For vowel_consonant, double the consonant before -ed or -ing

add_suffix(vowel_consonant, ing, Letters, NewLetters) :-
  append(Stem, [Last], Letters),
  append(Stem, [Last,Last,i,n,g], NewLetters), !.

add_suffix(vowel_consonant, d, Letters, NewLetters) :-
  append(Stem, [Last], Letters),
  append(Stem, [Last,Last,e,d], NewLetters), !.

% For final_sh, add -es for present

add_suffix(final_sh, s, Letters, NewLetters) :-
  append(Letters, [e,s], NewLetters), !.

% For final_sx, leave the same for present

add_suffix(final_sx, s, Letters, Letters) :-
   !.

% For anything else, add -s, -ed, or -ing

add_suffix(_Normal, d, Letters, NewLetters) :-
  append(Letters, [e,d], NewLetters), !.

add_suffix(_Normal, s, Letters, NewLetters) :-
  append(Letters, [s], NewLetters), !.

add_suffix(_Normal, ing, Letters, NewLetters) :-
  append(Letters, [i,n,g], NewLetters).

concat_atom([], '').

concat_atom([N|As], Atom) :- 
  integer(N), number_chars(N, X), atom_chars(A, X),
  concat_atom(As, A1), 
  atom_concat(A, A1, Atom).

concat_atom([A|As], Atom) :- 
  atom(A),
  concat_atom(As, A1), 
  atom_concat(A, A1, Atom).
