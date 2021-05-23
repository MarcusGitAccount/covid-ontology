% disjointAnalysis.pl 
%  Analyses 
%   1. depth of disjoint classes in class hierarchy
%       (shortest path)
%   2. whether disjoint classes are siblings
%   3. sizes of subtrees of which disjoint classes are roots
%   4. total size of the subClassOf hierarchy

% Written by Sandra Williams 
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

:- module(disjoints, [disjointAnalysis/1]).

:- use_module(library(lists)).
:- use_module(library(ugraphs)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

disjointAnalysis(FileName) :-
  atom_concat(FileName, 'Disjoints.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

disjointAnalysis(FileName) :-
  atom_concat(FileName, 'Select.pl', InputFileName),
  atom_concat(FileName, 'Disjoints.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, Terms),
  analyseDisjoints(Terms, FileName, Analyses),
  writeAnalyses(Analyses),
  saveList(OutputFile, Analyses).



analyseDisjoints(Terms, FileName, Analyses) :-
  axiomList(disjointClasses, Terms, Disjoints),
  generateAnalyses(Terms, Disjoints, FileName, Analyses).  


/****** axiomList/3 *****
  axiomList(+Functor, +TermList, -AxiomList)
  Copies all axioms with Functor from the
  TermList to AxiomList.
**************************/ 
axiomList(_, [], []).

axiomList(Func, [Term|Terms], [Term|Axioms]) :-
  Term =.. [Func|_], 
  axiomList(Func, Terms, Axioms), !.

axiomList(Func, [_|Terms], Axioms) :-
  axiomList(Func, Terms, Axioms), !.


/*********** generateAnalyses/4 ****
 generateAnalyses(+TermList, +DisjointList, +FileName, -AnalysisList)
 Terminates if DisjointList is empty.
 Constructs a list of all subClassOf axioms.
 Constructs an unweighted graph from the subClass list.
 Analyses the ugraph.
 Rather messy repetition here!
**********************/
generateAnalyses(Terms, [], FileName, [disjointAnalysis(FileName, 'No disjointClasses found', [], 'undef', [], TotalSize)]) :-  
  axiomList(subClassOf, Terms, SubClasses),
  subClassesToEdges(SubClasses, SubClasses, Edges), 
  vertices_edges_to_ugraph([], Edges, UGraph),
  reachable(root, UGraph, Reachables),
  length(Reachables, TotalSize).

generateAnalyses(Terms, Disjoints, FileName, Analyses) :-
  axiomList(subClassOf, Terms, SubClasses),
  subClassesToEdges(SubClasses, SubClasses, Edges), 
  vertices_edges_to_ugraph([], Edges, UGraph),
  analyse(Disjoints, SubClasses, UGraph, FileName, Analyses).


/*********** analyse/5 ****
 analyse(+DisjointList, +SubClassesList, +UGraph, +FileName, -AnalysisList)
 Terminates when DisjointList is empty.
 Calculates distance of each disjoint class from root of subClass hierarchy.
 Calculates whether disjoint classes are siblings (same superclass).
 Calculates number of classes beneath each disjoint class in hierarchy.
 Calculates total size of class hierarchy.
**********************/
analyse([], _, _, _, []).

analyse([Disjoint|Disjoints], SubClasses, UGraph, FileName, [disjointAnalysis(FileName, Disjoint,Distances,Siblings,SubTreeSizes,TotalSize)|Result]) :-
  Disjoint =.. [disjointClasses|Classes],
  distancesToRoot(Classes, UGraph, Distances),
  siblings(Classes, SubClasses, Siblings),
  subTreeSizes(Classes, UGraph, SubTreeSizes),
  reachable(root, UGraph, Reachables),
  length(Reachables, TotalSize),
  analyse(Disjoints, SubClasses, UGraph, FileName, Result).


/*********** distancesToRoot/3 ****
 distancesToRoot(+ClassList, +UGraph, -Distances)
 Calculates distance of each class in ClassList from root 
  using min_path in UGraph.
 If class is not in UGraph, assigns distance of 1
  (see below).
**********************/
distancesToRoot([], _, []).

distancesToRoot([Class|Classes], UGraph, [Dist|Distances])  :-
  min_path(root, Class, UGraph, _Path, Dist),
  distancesToRoot(Classes, UGraph, Distances), !.

% min_path fails (class is not an argument of a subClassOf relation)
% so assign a distance of 1 to the root
distancesToRoot([_|Classes], UGraph, [1|Distances])  :-
  distancesToRoot(Classes, UGraph, Distances), !.


/*********** siblings/3 ****
 siblings(+ClassList, +SubClassList, -TrueFalse)
 Checks each pair of classes in ClassList for
  a common superclass in SubClassList.
 If it can find one, it returns True, else False.
 If both classes in pair are do not have superclasses
 in SubClassList, it assumes root is the common superclass.
**********************/
siblings([_], _, 'TRUE').

siblings([Class1, Class2|Classes], SubClasses, Siblings) :-
   memberchk(subClassOf(Class1, class(X)), SubClasses), 
   memberchk(subClassOf(Class2, class(X)), SubClasses), 
   siblings([Class2|Classes], SubClasses, Siblings), !.

siblings([Class1, Class2|Classes], SubClasses, Siblings) :-
   \+ memberchk(subClassOf(Class1, class(_)), SubClasses), 
   \+ memberchk(subClassOf(Class2, class(_)), SubClasses), 
   siblings([Class2|Classes], SubClasses, Siblings), !.

siblings(_, _, 'FALSE').



/*********** subTreeSizes/3 ****
 subTreeSizes(+ClassList, +UGraph, -SubTreeSizes)
 Calculates sizes of subTrees in which each class in ClassList 
 is the root node (size includes the root, so if a class has
 no subclasses, the SubTreeSize is 1.
  a common superclass in SubClassList.
**********************/
subTreeSizes([], _, []).

subTreeSizes([Class|Classes], UGraph, [Size|SubTreeSizes])  :-
  reachable(Class, UGraph, Reachables),
  length(Reachables, Size),
  subTreeSizes(Classes, UGraph, SubTreeSizes), !.

% reachable fails (class is not an argument of a subClassOf relation)
% so assign a size of 1 to subTreeSize
subTreeSizes([_|Classes], UGraph, [1|SubTreeSizes])  :-
  subTreeSizes(Classes, UGraph, SubTreeSizes), !.
 


/******subClassesToEdges/3 ****
  subClassesToEdges(+SubClassList, +SubClassList, -Edges)
  Converts a list of terms arg1 SubClassList in the form 
  subClassOf(class(A),class(B)) into a list of Edges for an 
  unweighted graph (ugraph) in the form [A-B,B-C,...]
  2nd argument SubClass list is used for checking membership.
  NOTE 1 - only ATOMIC class arguments of subClassOf statements 
  are converted.
  NOTE 2 - the direction of the edges are transposed to 
  facilitate later search for 'reachable' classes below a given
  vertex. 
*******************************/
subClassesToEdges([], _, []).

subClassesToEdges([subClassOf(class(A),class(B))|Subs], SubClasses, [class(B)-class(A)|Rest]) :-
  memberchk(subClassOf(class(B),class(_)), SubClasses),
  subClassesToEdges(Subs, SubClasses, Rest), !.

subClassesToEdges([subClassOf(class(A),class(B))|Subs], SubClasses, [class(B)-class(A), root-class(B)|Rest]) :-
  subClassesToEdges(Subs, SubClasses, Rest), !.

subClassesToEdges([_|Subs], SubClasses, Rest) :-
  subClassesToEdges(Subs, SubClasses, Rest), !.



writeAnalyses([]) :- nl.

writeAnalyses([disjointAnalysis(FileName,Disjoint,Distances,Siblings,SubTreeSizes,TotalSize)|As]) :-
  nl, writeq(FileName), write(', '), 
  writeq(Disjoint), write(', '), 
  writeq(Distances), write(', '), 
  writeq(Siblings), write(', '), 
  writeq(SubTreeSizes), write(', '), 
  writeq(TotalSize),
  writeAnalyses(As).


