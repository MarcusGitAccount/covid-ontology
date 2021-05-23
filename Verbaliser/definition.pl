% definition.pl
% 
%  First, this program builds a list of lists where each list contains Groups
%  of axioms that "match" each lexical entry.
% "Match" here means that the class, individual or property of the lexical 
% entry appears as an ATOMIC argument of the axiom (see matchEntry predicate).
% e.g., class('cat') appears as the first argument in 
% subClassOf(class('cat'),class('animal')).
%
% Second, axioms in each group are sorted into genre-specific Subgroups. Subgroups
% are ordered:  
%    1. DEFINITION 
%    2. TYPOLOGY 
%    3. DESCRIPTION 
%    4. OTHERS (should be empty)
%    5. ILLUSTRATION  
%
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

:- module(definition, [definition/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).
% :- use_module(library(file_systems)).

:- use_module(pattern, [pattern/2]).
:- use_module(patternlist, [patternlist/3]).
:- use_module(aggregate, [aggregate/2]).

:- use_module(config).
:- consult(compat).


% Module code

maxExamples(3).  % Maximum number of sentences under Examples sub-headings


definition(FileName) :- 
  atom_concat(FileName, 'Definitions.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

definition(FileName) :- 
  atom_concat(FileName, 'Select.pl', InputFile1Name),
  atom_concat(FileName, 'Lexicon.pl', InputFile2Name),
  atom_concat(FileName, 'Definitions.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFile1Name, InputFile1),
  atom_concat(DirectorySlash, InputFile2Name, InputFile2),
  loadList(InputFile1, Terms),
  loadList(InputFile2, Lexicon),
  genDefinitions(Terms, Lexicon, Defs),
  sort(Defs, SortedDefs),
  flatten(SortedDefs,FlatDefs),
  saveList(OutputFile, FlatDefs).


genDefinitions(_, [], []).  

genDefinitions(Terms, [lex(Entry,_,Str,_)|Lexs], [[Title|SubGroups]|DefLists]) :- 
  genGroup(Entry, Terms, Group),
  buildSubGroups(Group, Entry, [], [], [], [], [], [], SGroups),
  tagEnd(End),
  append(SGroups, [End], SubGroups),
  capitalise(Str,Cstr),
  getType(Entry, Type),
  getIRI(Entry, IRI),
  tagStart(IRI, Type, Cstr, Title),
  genDefinitions(Terms, Lexs, DefLists), !.  

genDefinitions(Terms, [_|Lexs], DefLists) :- 
  genDefinitions(Terms, Lexs, DefLists).  


tagStart(IRI, Type, Cstr, StartTag) :-
  atom_concat('<description iri=\"', IRI, Part1),
  atom_concat(Part1, '\">\n<title type=\"', Part2),
  atom_concat(Part2, Type, Part3),
  atom_concat(Part3, '\">', Part4),
  atom_concat(Part4, Cstr, Part5),
  atom_concat(Part5, '</title>\n<text>', StartTag).

tagEnd('</text>\n</description>').


getType(class(_), 'class') :- !.
getType(dataProperty(_), 'data property') :- !.
getType(namedIndividual(_), 'individual') :- !.
getType(objectProperty(_), 'object property') :- !.


getIRI(Entry, IRI) :-
  Entry =.. [_, IRI].
/***********
  atom(S),
  atom_chars(S, CharList),
  append(_, [#|IRIchars], CharList),
  atom_chars(IRI, [#|IRIchars]), !. 
***********/
getIRI(_, 'undefinedIRI').



/******** Group axioms by lexical entries 
     Lexical entries are atomic classes, properties, individuals, etc.
     These predicates group together axioms that have
     a lexical entry as a major argument.
 *********/

genGroup(Entry, Terms, Group) :- 
  findall(P, matchEntry(Entry, Terms, P), Group).

matchEntry(Pat, [Term|_], Term) :- 
  matchEnt(Pat, Term).

matchEntry(Pat, [_|Terms], T) :-
  matchEntry(Pat, Terms, T).

matchEnt(Class, Term) :-
  functor(Class, class, _),
  Term =.. [_TermFunctor | Args],
  member(Class, Args).

matchEnt(Individual, Term) :-
  functor(Individual, namedIndividual, _),
  Term =.. [_TermFunctor | Args],
  member(Individual, Args).

matchEnt(Property, Term) :-
  ( functor(Property, objectProperty, _) ; functor(Property, dataProperty, _) ),
  Term =.. [_TermFunctor | Args],
  member(Property, Args).



/**************
buildSubGroups

Build SubGroups in the 
following order:
1. DEFINITION 
2. TYPOLOGY 
3. DESCRIPTION 
4. OTHERS (should be empty)
5. EXAMPLES  
6. CONFUSERS

************/

buildSubGroups([], _, Defs, Taxs, Descs, Oths, Exs, Confs, SubGroups) :-
  contents(Defs, 'Definition', CDefs),
  contents(Taxs, 'Typology', CTaxs),
  contents(Descs, 'Description', CDescs),
  contents(Oths, 'Others', COths),
  contents(Exs, 'Examples', CExs),
  contents(Confs, 'Distinctions', CConfs),
  flatten([CDefs, CTaxs, CDescs, COths, CExs, CConfs], SubGroups),!.


buildSubGroups([Term|Terms], Entry, Defs, Taxs, Descs, Oths, Exs, Confs, SubGroups) :-
  def(Term, Entry),
  buildSubGroups(Terms, Entry, [Term|Defs], Taxs, Descs, Oths, Exs, Confs, SubGroups),!.

buildSubGroups([Term|Terms], Entry, Defs, Taxs, Descs, Oths, Exs, Confs, SubGroups) :-
  taxonomic(Term, Entry),
  buildSubGroups(Terms, Entry, Defs, [Term|Taxs], Descs, Oths, Exs, Confs, SubGroups),!.

buildSubGroups([Term|Terms], Entry, Defs, Taxs, Descs, Oths, Exs, Confs, SubGroups) :-
  description(Term, Entry),
  buildSubGroups(Terms, Entry, Defs, Taxs, [Term|Descs], Oths, Exs, Confs, SubGroups),!.

buildSubGroups([Term|Terms], Entry, Defs, Taxs, Descs, Oths, Exs, Confs, SubGroups) :-
  illustration(Term, Entry),
  buildSubGroups(Terms, Entry, Defs, Taxs, Descs, Oths, [Term|Exs], Confs, SubGroups),!.

buildSubGroups([Term|Terms], Entry, Defs, Taxs, Descs, Oths, Exs, Confs, SubGroups) :-
  confusers(Term, Entry),
  buildSubGroups(Terms, Entry, Defs, Taxs, Descs, Oths, Exs, [Term|Confs], SubGroups),!.

buildSubGroups([Term|Terms], Entry, Defs, Taxs, Descs, Oths, Exs, Confs, SubGroups) :-
  buildSubGroups(Terms, Entry, Defs, Taxs, Descs, [Term|Oths], Exs, Confs, SubGroups),!.


% DEFINITION AXIOMS

% CLASSES
def( equivalentClasses(class(X),_), class(X) ).

% INDIVIDUALS

% OBJECT PROPERTIES
def( objectPropertyRange(objectProperty(X),class(_)), objectProperty(X) ).
def( objectPropertyDomain(objectProperty(X),class(_)), objectProperty(X) ).
def( subObjectPropertyOf(objectPropertyChain(objectProperty(_),objectProperty(_)),objectProperty(X)), objectProperty(X)).


% DATA PROPERTIES
def( dataPropertyRange(dataProperty(X),datatype(_)), dataProperty(X) ).
def( dataPropertyDomain(dataProperty(X),class(_)), dataProperty(X) ).


% TAXONOMIC AXIOMS

% CLASSES
taxonomic( subClassOf(class(X),class(_)), class(X) ).

% INDIVIDUALS
taxonomic( classAssertion(class(_),namedIndividual(X)), namedIndividual(X) ).

% OBJECT PROPERTIES
taxonomic( subObjectPropertyOf(objectProperty(X),objectProperty(_)), objectProperty(X) ).

% DATA PROPERTIES
taxonomic( subDataPropertyOf(dataProperty(X),dataProperty(_)), dataProperty(X) ).


% DESCRIPTION AXIOMS 

% CLASSES
description( subClassOf(class(X),_), class(X) ).
description( objectPropertyRange(objectProperty(_),class(X)), class(X) ).
description( objectPropertyDomain(objectProperty(_),class(X)), class(X) ).
description( objectPropertyDomain(objectProperty(_),class(X)), class(X) ).
description( dataPropertyDomain(dataProperty(_),class(X)), class(X) ).

% INDIVIDUALS
description( objectPropertyAssertion(objectProperty(_),namedIndividual(_),namedIndividual(X)), namedIndividual(X) ).
description( objectPropertyAssertion(objectProperty(_),namedIndividual(X),namedIndividual(_)), namedIndividual(X) ).
description( dataPropertyAssertion(dataProperty(_),namedIndividual(X),literal(_,_)), namedIndividual(X) ).
description( classAssertion(_,namedIndividual(X)), namedIndividual(X) ).


% OBJECT PROPERTIES
description( symmetricObjectProperty(objectProperty(X)), objectProperty(X) ).
description( irreflexiveObjectProperty(objectProperty(X)), objectProperty(X) ).
description( functionalObjectProperty(objectProperty(X)), objectProperty(X) ).
description( inverseFunctionalObjectProperty(objectProperty(X)), objectProperty(X) ).
description( asymmetricObjectProperty(objectProperty(X)), objectProperty(X) ).
description( inverseObjectProperties(objectProperty(X),objectProperty(_)), objectProperty(X) ).
description( inverseObjectProperties(objectProperty(_),objectProperty(X)), objectProperty(X) ).
description( subObjectPropertyOf(objectProperty(_),objectProperty(X)), objectProperty(X) ).
description( transitiveObjectProperty(objectProperty(X)), objectProperty(X) ).

% DATA PROPERTIES
description( functionalDataProperty(dataProperty(X)), dataProperty(X) ).


% EXAMPLES AXIOMS

% CLASSES
illustration( classAssertion(class(X),_), class(X) ).
illustration( subClassOf(class(_), class(X)), class(X) ).

% OBJECT PROPERTIES
illustration( objectPropertyAssertion(objectProperty(X),namedIndividual(_),namedIndividual(_)), objectProperty(X) ).

% DATA PROPERTIES
illustration( dataPropertyAssertion(dataProperty(X),namedIndividual(_),literal(_,_)), dataProperty(X) ).


% CONFUSER AXIOMS

% CLASSES
confusers( disjointClasses(class(X),class(_)), class(X) ).
confusers( disjointClasses(class(_),class(X)), class(X) ).
confusers( disjointClasses(class(_),class(_),class(_)), class(_) ).
confusers( disjointClasses(class(_),class(_),class(_),class(_)), class(_) ).
confusers( disjointClasses(class(_),class(_),class(_),class(_),class(_)), class(_) ).

% INDIVIDUALS
confusers( differentIndividuals(_,namedIndividual(X)), namedIndividual(X) ).
confusers( differentIndividuals(namedIndividual(X), _), namedIndividual(X) ).


contents([], _, []).
% contents(Axioms, Title, [NewTitle|Result]) :-
contents(Axioms, Title, Result) :-
  pattern(Axioms, Patterns),
  patternlist(Axioms, Patterns, PList), 
  aggregate(PList, AggAxioms),
  limitExamples(Title, AggAxioms, NewTitle, Res),
  tagGroup(NewTitle, Res, Result). 



tagGroup(Title, Group, TGroup) :-
  atom_concat('<subgroup id=\"', Title, Part1),
  atom_concat(Part1, '\">', TTitle), 
  append([TTitle|Group], ['</subgroup>'], TGroup). 
  

/**********
 limitExamples(+InputTitle, +InputList, +OutputTitle, +OutputList)
 Limits examples lists only to maxExamples, or fewer, and 
 if necessary, changes title to reflect this.
 For example:
 " HAS AS AREA.
 Examples.
  Abruzzo has as area 10794.0.
  Ailsa Craig has as area 338.0.
  Aosta Valley has as area 3263.0.
  Apulia has as area 19362.0.
  Arran has as area 43201.0.
  Auskerry has as area 18.0.
  Baleshare has as area 12.0.
  Barra has as area 383.0. "
becomes:
 "Examples (3 of 8 shown).
   Abruzzo has as area 10794.0.
   Ailsa Craig has as area 338.0.
   Aosta Valley has as area 3263.0. "
It's okay to do this since those missed out appear under 
other entries, e.g.,  "Barra has as area 383.0" also appears 
under the entry for Barra.
****************/
limitExamples('Examples', List, 'Examples', List) :-
  length(List,N),
  maxExamples(Max),
  N =< Max, !.

limitExamples('Examples', List, NewTitle, SubList) :-
  length(List,N),
  maxExamples(Max),
  N > Max,
  append(SubList,_,List), length(SubList, Max),
  number_codes(Max,CodesMax), atom_codes(AtomMax,CodesMax),
  atom_concat('Examples (', AtomMax, Part1),
  atom_concat(Part1, ' of ', Part2),
  number_codes(N,CodesN), atom_codes(AtomN,CodesN),
  atom_concat(Part2, AtomN, Part3),
  atom_concat(Part3, ' shown)', NewTitle), !.  

limitExamples(Title, List, Title, List).


/*********** Utilities ********/

capitalise(Word, CapWord) :-
  atom_codes(Word, Chars),
  toCap(Chars, CapChars),
  atom_codes(CapWord, CapChars).

toCap([],[]).
toCap([C|Cs],[NewC|Caps]) :-
  name('abcdefghijklmnopqrstuvwxyz', LowerCase),
  member(C, LowerCase),!,
  NewC is C-32,
  toCap(Cs,Caps).
toCap([C|Cs],[C|Caps]) :-
  toCap(Cs,Caps).


:- if(\+(current_predicate(_,definition:flatten(_A,_B)))).
definition:flatten([], []).
definition:flatten([H|T], Flat) :-
    is_list(H),
    definition:flatten(T,F),
    append(H, F, Flat).

:- endif.


/*******
flatten([], []).
flatten([H|T], Flat) :-
  is_list(H),
  flatten(T, F),
  append(H, F, Flat).
*********/

