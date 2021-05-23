% group.pl Group patterns in an ontology in Prolog form 

% Written by Sandra Williams 
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

 :- module(group, [group/3]).

:- use_module(library(lists)).
:- use_module(config). 
:- consult(compat).
%:- use_module('pillow', [html2terms/2]).

% Module code

group(FileName, Terms, Pats) :-
  atom_concat(FileName, 'groupstext', OutputName),
  atom_concat(OutputName, '.txt', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  getPattern(Terms, Pats),
  sort(Pats, SortedPs),
  nl, writeq(SortedPs),
   open(OutputFile, write, Stream), !,
   writeGroups(Stream, SortedPs),
  close(Stream).
  

getPattern([], []).

getPattern([Term|Terms], [Term|Pats]) :- 
    pattern(Term),
    getPattern(Terms, Pats). 

getPattern([_|Terms], Pats) :- 
    getPattern(Terms, Pats). 


pattern(subClassOf(class(_),class(_))).
pattern(subClassOf(class(_),objectSomeValuesFrom(objectProperty(_),class(_)))).
pattern(objectPropertyAssertion(objectProperty(_),namedIndividual(_),namedIndividual(_))).
pattern(classAssertion(objectSomeValuesFrom(objectProperty(_),class(_)),namedIndividual(_))).



writeGroups(_, []) :- write('Thats all folks'), nl.

writeGroups(Stream, [G|Gs]) :-
  writeq(Stream, G),
  writeq(G), nl,
  write(Stream, '.'),
  nl(Stream), nl(Stream),
  writeGroups(Stream, Gs).


