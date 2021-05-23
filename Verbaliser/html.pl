% html.pl Constructs ontopedia from its Prolog data

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

:- module(html, [html/0]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2,saveList/2]).
:- use_module(library(system)).
:- use_module(config). 

:- consult(compat).

% Module code

html :-
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, 'ontopediaData.pl', InputFile),
  atom_concat(DirectorySlash, 'ontopedia.html', OutputFile),
  loadList(InputFile, Entries),
  open(OutputFile, write, Stream),
  makeHTML(Stream, Entries),
  close(Stream).
  
makeHTML(S, Entries) :-
  makeHead(S),
  makeBody(S, Entries).

makeHead(S) :-
  write(S, '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">'),
  nl(S),
  write(S, '<HTML><HEAD><TITLE>Ontopedia</TITLE>'),
  nl(S),
  write(S, '<META http-equiv=Content-Type content="text/html; charset=windows-1252">'),
  nl(S),
  write(S, '<META content="MSHTML 6.00.2800.1498" name=GENERATOR></HEAD>'),
  nl(S).

makeBody(S, Entries) :-
  write(S, '<BODY bgColor=#f1f1e4>'),
  nl(S),
  makeEntries(S, Entries),
  write(S, '</BODY>'),
  nl(S).

makeEntries(_S, []).
makeEntries(S, [E|Es]) :- makeEntry(S, E), makeEntries(S, Es).

makeEntry(S, entry(W, Phrases)) :-
  write(S, '<H3>'), write(S, W), write(S, '</H3>'), nl(S),
  write(S, '<OL>'), nl(S),
  makePhrases(S, Phrases),
  write(S, '</OL>'), nl(S).

makePhrases(_S, []).
makePhrases(S, [P|Ps]) :- makePhrase(S, P), makePhrases(S, Ps).

makePhrase(S, phrase(P, Links)) :-
  write(S, '<LI>'), nl(S),
  write(S, '<B>'), write(S, P), write(S, '</B>'), nl(S),
  write(S, '<UL>'), nl(S),
  makeLinks(S, Links),
  write(S, '</UL>'), nl(S),
  write(S, '</LI>'), nl(S).

makeLinks(_S, []).
makeLinks(S, [L|Ls]) :- makeLink(S, L), makeLinks(S, Ls).

makeLink(S, link(Ontology,Entity,Sentence)) :-
  makeAnchor(Ontology, Entity, Anchor),
  write(S, '<LI>'), nl(S),
  write(S, Sentence), nl(S),
  write(S, '<A HREF="'),
  write(S, Anchor),
  write(S, '">'),
  write(S, Ontology),
  write(S, '.xml'),
  write(S, '</A>'), nl(S),
  write(S, '</LI>'), nl(S).

makeAnchor(Ontology, Entity, Anchor) :-
  Entity =.. [_,IRI],
  removeNameSpace(IRI, Name),
  atomic_list_concat([Ontology,'DefinitionsText.xml',Name], Anchor).

removeNameSpace(Name, NewName) :-
  name(Name, List),
  reverse(List, RevList),
  pruneList(RevList, RevNewList),
  reverse(RevNewList, NewList),
  atom_codes(NewName, [35|NewList]), !.

removeNameSpace(Name, Name).

% Stop when you hit # or /

pruneList([], []).
pruneList([C|_List], []) :- member(C, [35, 47, 92]), !.
pruneList([C|List], [C|NewList]) :- pruneList(List, NewList).



  