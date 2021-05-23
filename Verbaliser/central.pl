% central.pl Find node in a tree with highest centrality 

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

:- module(central, [test/0, central/2]).

:- use_module(library(lists)).

% Module code

% Given a tree defined by a set of child relations, associate a centrality
% score with each node. The most central node has the lowest sum of distances
% from the other nodes.

central(Tree, Scores) :-
  getNodes(Tree, UnsortedNodes),
  sort(UnsortedNodes, Nodes),
  getPairs(Nodes, Pairs),
  getDistances(Tree, Pairs, Distances),
  getScores(Nodes, Distances, Scores).

test :-
  getTree(1, Tree),
  central(Tree, Scores),
  write(Scores), nl.

getTree(1, [s(b,a),s(c,a),s(d,b),s(e,b),s(f,d),s(g,d),s(h,e),s(i,e)]).

getNodes([], []).
getNodes([s(X,Y)|Ss], [X,Y|Ns]) :- getNodes(Ss, Ns).

getPairs([], []).

getPairs([N|Ns], Pairs) :-
  nodePairs(N, Ns, Pairs1),
  getPairs(Ns, Pairs2),
  append(Pairs1, Pairs2, Pairs).

nodePairs(_, [], []).
nodePairs(Node, [N|Ns], [[Node,N]|Pairs]) :- nodePairs(Node, Ns, Pairs).

getDistances(_, [], []).

getDistances(Tree, [P|Ps], [(V:P)|Ds]) :-
  getDistance(Tree, P, D),
  convertDistance(D, V),
  getDistances(Tree, Ps, Ds).

getDistance(Tree, [X,Y], D) :-
  ancestor(Tree, X, Y, A),
  distance(Tree, X, A, D1),
  distance(Tree, Y, A, D2),
  D is D1+D2.

ancestor(Tree, X, Y, A) :-
  ancestors(Tree, X, XAs),
  ancestors(Tree, Y, YAs),
  firstCommon([X|XAs], [Y|YAs], A).

ancestors(Tree, Node, []) :- \+ member(s(Node,_), Tree), !.

ancestors(Tree, Node, [Parent|As]) :-
  member(s(Node,Parent), Tree),
  ancestors(Tree, Parent, As).

firstCommon([XA|_XAs], YAs, XA) :- member(XA, YAs), !.
firstCommon([_|XAs], YAs, XA) :- firstCommon(XAs, YAs, XA).

distance(_Tree, Node, Node, 0) :- !.

distance(Tree, Node, Ancestor, Distance) :-
  member(s(Node,Parent), Tree),
  distance(Tree, Parent, Ancestor, D),
  Distance is D+1.

% convertDistance(X,X) :- !.
convertDistance(Distance, Value) :- Value is 1/exp(2,Distance-1).

getScores([], _, []).
getScores([N|Ns], Ds, [S|Ss]) :- getScore(N, Ds, S), getScores(Ns, Ds, Ss).

getScore(N, Ds, S:N) :-
  findall(P, relevantPair(N, Ds, P), Ps),
  addScores(Ps, S).

relevantPair(N, Ds, S:[N,M]) :- member(S:[N,M], Ds).
relevantPair(N, Ds, S:[M,N]) :- member(S:[M,N], Ds).

addScores([], 0).
addScores([(S:_)|Ds], Sum) :- addScores(Ds, Rest), Sum is S+Rest.
