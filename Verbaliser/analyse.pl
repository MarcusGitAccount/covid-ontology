% analyse.pl Looks for simple/complex arguments in collated patterns 

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

:- module(analyse, [analyse1/0, analyse2/0]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).

% Module code

analyse1 :-
  loadList('../results/data0.txt', Patterns),
  functorList(Functors),
  relevantPatterns(Functors, Patterns, RelevantPatterns),
  saveList('../results/data1.txt', RelevantPatterns),
  getResults(Functors, RelevantPatterns, Results),
  saveList('../results/data2.txt', Results),
  axiomList(Axioms),
  relevantPatterns(Axioms, Patterns, AxiomPatterns),
  saveList('../results/data3.txt', AxiomPatterns).

analyse2 :-
  loadList('../results/entries.txt', Patterns),
  lexCount(Patterns, name, UnsortedNameCounts),
  lexCount(Patterns, noun, UnsortedNounCounts),
  lexCount(Patterns, verb, UnsortedVerbCounts),
  sort(UnsortedNameCounts, NameCounts),
  sort(UnsortedNounCounts, NounCounts),
  sort(UnsortedVerbCounts, VerbCounts),
  nl, write('Names: '), write(NameCounts),
  nl, write('Nouns: '), write(NounCounts),
  nl, write('Verbs: '), write(VerbCounts), nl.

lexCount([], _, []).

lexCount([(X:P)|Ps], X, Counts) :-
  lexCount(Ps, X, Cs), !,
  wordCount(P, N),
  addCount(N, Cs, Counts), !.

lexCount([_|Ps], X, Counts) :-
  lexCount(Ps, X, Counts).

wordCount(Atom, Count) :-
  name(Atom, Chars),
  sepCount(Chars, Count).

sepCount([], 1).
sepCount([' '|Chars], N) :- sepCount(Chars, M), N is M+1, !.
sepCount([_|Chars], N) :- sepCount(Chars, N).

addCount(N, [], [N:1]).
addCount(N, [(N:X)|Rest], [(N:Y)|Rest]) :- Y is X+1, !.
addCount(N, [C|Rest], [C|NewRest]) :- addCount(N, Rest, NewRest).

functorList(
  [subClassOf,
   equivalentClasses,
   disjointClasses,
   objectIntersectionOf,
   objectUnionOf]).

axiomList(
  [subClassOf,
   equivalentClasses,
   disjointClasses,
   disjointUnion,
   objectPropertyChain,
   equivalentObjectProperties,
   disjointObjectProperties,
   objectPropertyDomain,
   objectPropertyRange,
   inverseObjectProperties,
   functionalObjectProperty,
   inverseFunctionalObjectProperty,
   reflexiveObjectProperty,
   irreflexiveObjectProperty,
   symmetricObjectProperty,
   asymmetricObjectProperty,
   transitiveObjectProperty,
   subDataPropertyOf,
   equivalentDataProperties,
   disjointDataProperties,
   dataPropertyDomain,
   dataPropertyRange,
   functionalDataProperty,
   datatypeDefinition,
   sameIndividual,
   differentIndividuals,
   classAssertion,
   objectPropertyAssertion,
   negativeObjectPropertyAssertion,
   dataPropertyAssertion,
   negativeDataPropertyAssertion]).

relevantPatterns(_, [], []).

relevantPatterns(Functors, [P|Ps], [P|Rs]) :-
  relevantPattern(Functors, P),
  relevantPatterns(Functors, Ps, Rs), !.

relevantPatterns(Functors, [_|Ps], Rs) :- relevantPatterns(Functors, Ps, Rs).

relevantPattern(Functors, _:Term) :- functor(Term, F, _), member(F, Functors).

getResults(Terms, Results) :-
  functorList(List),
  getResults(Terms, List, Results).

getResults([], _, []).
getResults([F|Fs], Pats, [R|Rs]) :- getResult(F, Pats, R), getResults(Fs, Pats, Rs).

getResult(F, [], r(F,0,0,0,0)).

getResult(F, [T|Ts], Result) :-
  patResult(F, T, Result1),
  getResult(F, Ts, Result2),
  combineResult(Result1, Result2, Result).

patResult(F, N:Term, Result) :-
  Term =.. [F,Arg1,Arg2],
  classifyArg(Arg1, C1),
  classifyArg(Arg2, C2), 
  patRes(N, F, C1, C2, Result), !.

patResult(F, _, r(F,0,0,0,0)).

patRes(N, F, simple, simple, r(F,N,0,0,0)).
patRes(N, F, simple, complex, r(F,0,N,0,0)).
patRes(N, F, complex, simple, r(F,0,0,N,0)).
patRes(N, F, complex, complex, r(F,0,0,0,N)).

classifyArg(Arg, simple) :-
  functor(Arg, Functor, _), 
  member(Functor, ['NamedIndividual',
                   'Class',
                   'ObjectProperty',
                   'DataProperty',
                   'Datatype',
                   'Literal',
                   'Prefix',
                   'Iri',
                   'Declaration',
                   'ObjectOneOf',
                   'AnnotationAssertion']), !.

classifyArg(_Arg, complex).

combineResult(R1, R2, R12) :-
  R1 = r(F, SS1, SC1, CS1, CC1),
  R2 = r(F, SS2, SC2, CS2, CC2),
  SS is SS1+SS2,
  SC is SC1+SC2,
  CS is CS1+CS2,
  CC is CC1+CC2,
  R12 = r(F, SS, SC, CS, CC).

