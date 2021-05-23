% aggregate.pl 
%
%  Input file is a file containing lists of axioms that match the same abstract
%  pattern, e.g., classAssertion(class(C),individual(I), see patternLists.pl
% 
%  When ONLY ONE IRI DIFFERS in two or more ontology axioms with the SAME 
%   abstract pattern (in Prolog form), this code aggregates them into a prolog list.

% E.g., subClassOf(Class(iri='#Yoga'), Class(iri='#Relaxation'). and 
%       subClassOf(Class(iri='#Sunbathing'), Class(iri='#Relaxation').

% Aggregation: subClassOf( [Class(iri='#Yoga'), Class(iri='#Sunbathing')], Class(iri='#Relaxation').
 
% Written by Sandra Williams
% Copyright (c) 2009 by Open University
% Modified 2011 to truncate length of aggregated lists.
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

:- module(aggregate, [aggregate/1, aggregate/2]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

maxLength(3).  % Maximum length for aggregated lists

/***** aggregate/1 *****/
aggregate(FileName) :- 
  atom_concat(FileName, 'AggregateLists.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

aggregate(FileName) :- 
  atom_concat(FileName, 'PatternLists.pl', InputFileName),
  atom_concat(FileName, 'AggregateLists.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, PLists),
  aggregate(PLists, AggLists), 
  saveList(OutputFile, AggLists).

/***** aggregate/2 *****/
aggregate(PLists, FlaggList) :- 
  genAggLists(PLists, ALists),
  genImpliedAxioms(ALists, ImpliedLists),
  deleteImpliedAxioms(ALists, ImpliedLists, AggLists),
  flatten(AggLists, FlaggList).


/***** genAggLists/2*****/
genAggLists([], []).

genAggLists([PList|PLists], [AList|ALists]) :-
  aggList(PList, AList),
  genAggLists(PLists, ALists).


/***** aggList/2*****/
aggList([], []).

aggList([H|T], [Result]) :-  % Axioms with one argument - all axioms in the list are aggregated
  functor(H, Func, 1),
  truncateList([H|T], Tlist, _),   
  genArgList(1, Tlist, Arg1s),
  sort(Arg1s, SortedAs),
  Result =.. [Func | [SortedAs]].

aggList([H|T], Result) :-  % Axioms with two arguments
  functor(H, _Func, 2),
  agg2Args(1,2,[H|T],Result1,Rem1),
  deleteList([H|T], Rem1, UnAgg),
  agg2Args(2,1,UnAgg,Result2,Rem2),
  deleteList(Result1, Rem2, Result1Del),
  append(Result1Del, Result2, All),
  sort(All, Result).

  
aggList([H|T], Result) :-  % *Some* axioms with three arguments
  functor(H, Func, 3),
  ( Func=objectPropertyAssertion ; 
    Func=dataPropertyAssertion ; 
    Func=negativeDataPropertyAssertion ;
    Func=negativeObjectPropertyAssertion ),
  agg3Args(1,2,[H|T],Result1,Rem1),
  deleteList([H|T],Rem1,UnAgg),
  agg3Args(1,3,UnAgg,Result2,Rem2),
  deleteList(Result1, Rem2, Result1Del),
  append(Result1Del, Result2, All),
  sort(All, Result), !.

aggList([H|T], [H|T]) :-
  functor(H, _, N),
  N > 2.  % some 3-arg axioms not in list above




/******************
agg2Args/5
agg2Args(+N1,+N2,+List,?Result,?Rem)
  Saves repetitions in aggList/2 when aggregating the input 
  List of axioms with 2 arguments. 2nd arguments are 
  aggregated (when 1st arguments are identical) 
  and 1st arguments (when 2nd args are identical).
  Argument numbers are controlled through inputs N1 and N2.
  Outputs are the aggregated result and remainder
  (after truncation).
*******************/
agg2Args(N1, N2, List, Result, Rem) :-
  makeKeys(N1, List, KeyList),
  keysort(KeyList, SortKeys),
  keyclumped(SortKeys, ClumpKeys),  % E.g., ClumpKeys = [a-[fn(a,b), fn(a,c)], b-[fn(b,d)]]
  aggClumps(N2, ClumpKeys, Result, Rem).
 

/******************
agg3Args/5
agg3Args(+N1,+N2, +List,?Result,?Rem)
  Saves repetitions in aggList/2 when aggregating the input 
  List of axioms with 3 arguments. 3rd arguments are 
  aggregated (when 1st and 2nd arguments are identical) 
  and 2nd arguments (when 1st and 3rd args are identical).
  Argument numbers are controlled through inputs N1 and N2.
  Outputs are the aggregated result and remainder
  (after truncation).
*******************/
agg3Args(N1, N2, List, Result, Rem) :-
  makeKeys(N1, N2, List, KeyList),
  keysort(KeyList, SortKeys),
  keyclumped(SortKeys, ClumpKeys),  % E.g., ClumpKeys = [[a,b]-[fn(a,b,c), fn(a,b,d)], [b,d]-[fn(b,d,e)]]
  aggClumps(N1, N2, ClumpKeys, Result, Rem).

/**********
makeKeys/3
makeKeys(+Number, +TermsList, ?KeyPairsList)
 Input TermsList is a list of terms with
 the same number of arguments, Number
 must be equal to or less than the number
 of arguments. 
 E.g., makeKeys(2, [eats(horse,grass),eats(dog,bone)], X).
 X = [grass-eats(horse,grass), bone-eats(dog,bone)]
***********/
makeKeys(_, [], []).

makeKeys(N, [H|T], [A-H|Rest]) :-
  H =.. [_|Args],
  nth1(N, Args, A),
  makeKeys(N, T, Rest).


/**********
makeKeys/4
makeKeys(+No1, +No2, +TermsList, ?KeyPairsList)
 Input TermsList is a list of terms with
 the same number of arguments, Numbers
 must be equal to or less than the number
 of arguments. 
 E.g., makeKeys(1, 3, [prop(eats,horse,grass),prop(eats,dog,bone)], X).
 X = [[eats,grass]-prop(eats,horse,grass), [eats,bone]-prop(eats,dog,bone)]
***********/
makeKeys(_, _, [], []).

makeKeys(N1, N2, [H|T], [[A,B]-H|Rest]) :-
  H =.. [_|Args],
  nth1(N1, Args, A),
  nth1(N2, Args, B),
  makeKeys(N1, N2, T, Rest).
  

/**********
aggClumps/4
aggClumps(+No, +TermsList, ?AggList)
 Input TermsList is a list of 2-arg terms, 
 E.g., 
 aggClumps(1, [[eats,horse]-[fn(horse,animal),fn(cow,animal)]|T], X).
  X = [fn([horse,cow],animal)|Rest]
***********/
aggClumps(_, [], [], []).

aggClumps(2, [Arg1-[H|Clump]|T], [Agg|Rest], Remainder) :-
  H =.. [Func,Arg1,_],
  truncateList([H|Clump], Trunc, Rem),   
  genArgList(2, Trunc, Arg2s),
  addNumItems(Arg2s,Rem,Arg2sNum),
  constructTerm(Func,Arg1,Arg2sNum,Agg),
  aggClumps(2, T, Rest, Others),
  append(Rem,Others,Remainder).

aggClumps(1, [Arg2-[H|Clump]|T], [Agg|Rest], Remainder) :-
  H =.. [Func,_,Arg2],
  truncateList([H|Clump], Trunc, Rem),   
  genArgList(1, Trunc, Arg1s),
  addNumItems(Arg1s,Rem,Arg1sNum),
  constructTerm(Func,Arg1sNum,Arg2,Agg),
  aggClumps(1, T, Rest, Others),
  append(Rem,Others,Remainder).


/**********
aggClumps/5
aggClumps(+No1,+No2, +TermsList, ?AggList)
 Input TermsList is a list of 3-arg terms, 
 E.g., 
  aggClumps(1,2, [[eats,horse]-[fn(eats,horse,grass),fn(eats,horse,hay)]|T], X).
  X = [fn(eats,horse,[grass,hay])|Rest]
***********/
aggClumps(_, _, [], [], []).

aggClumps(1, 3, [[Arg1,Arg3]-[H|Clump]|T], [Agg|Rest], Remainder) :-
  H =.. [Func,Arg1,_,Arg3],
  truncateList([H|Clump], Trunc, Rem),   
  genArgList(2, Trunc, Arg2s),
  addNumItems(Arg2s,Rem,Arg2sNum),
  constructTerm(Func,Arg1,Arg2sNum,Arg3,Agg),
  aggClumps(1, 3, T, Rest, Others),
  append(Rem,Others,Remainder).

aggClumps(1, 2, [[Arg1,Arg2]-[H|Clump]|T], [Agg|Rest], Remainder) :-
  H =.. [Func,Arg1,Arg2,_],
  truncateList([H|Clump], Trunc, Rem),   
  genArgList(3, Trunc, Arg3s),
  addNumItems(Arg3s,Rem,Arg3sNum),
  constructTerm(Func,Arg1,Arg2,Arg3sNum,Agg),
  aggClumps(1, 2, T, Rest, Others),
  append(Rem,Others,Remainder).

% deleteList(+InputList, +DeleteList, ?Result)
% deletes every element in DeleteList from InputList
% e.g., deleteList([a,b,c,a,b,d,e], [a,b], [c,d,e])

deleteList(L, [], L).

deleteList(L, [H|T], Result) :-
  delete(L, H, Ldel),
  deleteList(Ldel, T, Result). 
 
/********constructTerm/4 *********/
constructTerm(Func,[Arg1],Arg2,Term) :-
  Term =.. [Func,Arg1,Arg2], !.

constructTerm(Func,Arg1,[Arg2],Term) :-
  Term =.. [Func,Arg1,Arg2], !.

constructTerm(Func,Arg1,Arg2,Term) :-
  Term =.. [Func,Arg1,Arg2].


/********constructTerm/5 *********/
constructTerm(Func,[Arg1],Arg2,Arg3,Term) :-
  Term =.. [Func,Arg1,Arg2,Arg3], !.

constructTerm(Func,Arg1,[Arg2],Arg3,Term) :-
  Term =.. [Func,Arg1,Arg2,Arg3], !.

constructTerm(Func,Arg1,Arg2,[Arg3],Term) :-
  Term =.. [Func,Arg1,Arg2,Arg3], !.

constructTerm(Func,Arg1,Arg2,Arg3,Term) :-
  Term =.. [Func,Arg1,Arg2,Arg3].

/************
addNumItems(+ArgList, +RemainderList, ?ArgListWithDummy)
 adds a dummy Term 'numberOfElements(N)' 
 to an argument list that is used by the 
 grammar to generate, e.g., 'and so on (45 items)'
**************/
addNumItems(Args, [], Args).

addNumItems(Args, Rem, Result) :-
  length(Rem, N),
  N > 0,
  maxLength(Max),  
  Total is Max + N,
  number_codes(Total,Codes), atom_codes(Atom,Codes),
  append(Args, [numberOfElements(Atom)], Result).



/************
genArgList/3
genArgList(+N, +TermList, ?ArgList)
 Given an input list of terms,
 this outputs a list of their nth arguments. E.g.
 genArgList(1, [eats(a,hay),eats(b,peas),eats(c,bones)], List)
 List = [a,b,c]
**************/
genArgList(_, [], []).

genArgList(N, [H|T], [A|Args]) :-
  H =.. [_|ArgList],
  nth1(N, ArgList, A),
  genArgList(N, T, Args).



/************
genArgList/4
genArgList(+N1, +N2, +TermList, ?ArgList)
 Given an input list of terms with identical functor,
 this outputs a list of lists of two of the arguments. E.g.
 genArgList(1, 2, [eats(a,b),eats(b,c),eats(a,c)], List)
 List = [[a,b],[b,c],[a,c]]
**************/
genArgList(_, _, [], []).

genArgList(N1, N2, [H|T], [[A1, A2]|Args]) :-
  H =.. [_|Hargs],
  nth1(N1, Hargs, A1),
  nth1(N2, Hargs, A2),
  genArgList(N1, N2, T, Args).





genImpliedAxioms([], []).
genImpliedAxioms([H|T], [Result|Rest]) :-
  impliedAxioms(H, H, Result),
  genImpliedAxioms(T, Rest).

impliedAxioms([], _, []).

impliedAxioms([H|T], All, [H|Rest]) :-
  implies(All, H), !,
  impliedAxioms(T, All, Rest).

impliedAxioms([_|T], All, Rest) :-
  impliedAxioms(T, All, Rest).

implies([H|_], Axiom) :-  % Axioms with one argument
  Axiom \= H,
  Axiom =.. [Func, X],
  H =.. [Func, A],
  contains(A, X).
 
implies([H|_], Axiom) :-  % Axioms with 2 arguments 
  Axiom \= H,
  Axiom =.. [Func, X, Y],
  H =.. [Func, A, B],
  contains(A, X), 
  contains(B, Y), 
  \+ ( A=[X], Y=[B]  ).  % Prevents cases where fh(x,[y]) and fa([x],y) imply each other

implies([H|_], Axiom) :-  % Axioms with 3 arguments 
  Axiom \= H,
  Axiom =.. [Func, Arg1, X, Y],  % Arg1 is the Property argument
  H =.. [Func, Arg1, A, B],
  contains(A, X), 
  contains(B, Y), 
  \+ ( A=[X], Y=[B]  ).  % Prevents cases where fh(x,[y]) and fa([x],y) imply each other

implies([_|T], Axiom) :-
  implies(T, Axiom).

contains(Arg, Item) :-
  Item = Arg.

contains(Arg, Item) :-
  memberchk(Item, Arg).

contains(Arg, Item) :-
  is_list(Item),
  length(Item, N),
  N = 1,
  nth1(1, Item, X),
  ( memberchk(X, Arg) ; X = Arg ).


deleteImpliedAxioms([], [], []).

deleteImpliedAxioms([Ha|ALists], [Hi|ImpliedLists], [Result|AggLists]) :-
  delImpAxs(Ha, Hi, Result),
  deleteImpliedAxioms(ALists, ImpliedLists, AggLists).
  
delImpAxs(Result, [], Result).
 
delImpAxs(As, [I|Is], Result) :-
  delete(As, I, R),
  delImpAxs(R, Is, Result).
    


:- if(\+(current_predicate(_, aggregate:flatten(_A,_B)))).
aggregate:flatten([], []).
aggregate:flatten([H|T], Flat) :-
    is_list(H),
    aggregate:flatten(T,F),
    append(H, F, Flat).

:- endif.



% truncate(+InputList, ?TruncatedList, ?RemainderList)
truncateList(L, L, []) :-
  maxLength(Max),  
  length(L, N),
  N =< Max.
truncateList(L, Sub, Rem) :-
  maxLength(Max),  
  length(L, N),
  N > Max,
  append(Sub,Rem,L), length(Sub,Max).


