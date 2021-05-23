% standard.pl Standardise identifiers by eliminating abbreviatedIRI

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

:- module(standard, [standard/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

standard(FileName) :-
  atom_concat(FileName, 'Standard.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

standard(FileName) :-
  atom_concat(FileName, 'Term.pl', InputFileName),
  atom_concat(FileName, 'Standard.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, Terms),
  standardTerms(Terms, STerms),
  saveList(OutputFile, STerms).

standardTerms(Terms, STerms) :-
  getPrefix(Terms, Prefix, Rest),
  standardTerms(Prefix, Rest, STerms).

getPrefix([], [], []).
getPrefix([Term|Terms], [Term|Prefix], Rest) :- functor(Term, prefix, _), getPrefix(Terms, Prefix, Rest), !.
getPrefix([Term|Terms], Prefix, [Term|Rest]) :- getPrefix(Terms, Prefix, Rest).

standardTerms(_Prefix, [], []).
standardTerms(Prefix, [T|Ts], [S|Ss]) :- standardTerm(Prefix, T, S), standardTerms(Prefix, Ts, Ss).

standardTerm(Prefix, abbreviatediri=IRI, FullIRI) :-
  splitIRI(IRI, Left, Right),
  member(prefix(name=Left,iri=FullName), Prefix),
  atom_concat(FullName, Right, FullIRI), !.

standardTerm(Prefix, abbreviatedIRI=IRI, FullIRI) :-
  splitIRI(IRI, Left, Right),
  member(prefix(name=Left,iri=FullName), Prefix),
  atom_concat(FullName, Right, FullIRI), !.

standardTerm(Prefix, abbreviatediri(IRI), iri(FullIRI)) :-
  splitIRI(IRI, Left, Right),
  member(prefix(name=Left,iri=FullName), Prefix),
  atom_concat(FullName, Right, FullIRI), !.

standardTerm(Prefix, abbreviatedIRI(IRI), iri(FullIRI)) :-
  splitIRI(IRI, Left, Right),
  member(prefix(name=Left,iri=FullName), Prefix),
  atom_concat(FullName, Right, FullIRI), !.

standardTerm(_Prefix, iri=Y, Y) :- !.

standardTerm(_Prefix, cardinality=A, A) :- !.%[integerAtom(N,A), !.

standardTerm(_Prefix, X=Y, X=Y) :- !.

standardTerm(_Prefix, X, X) :- atom(X), \+ X=[], !.

% Ensure that constructors with cardinalities have three arguments
standardTerm(Prefix, Term, STerm) :-
  Term =.. [Functor, Arg1, Arg2],
  cardinalityConstructor(Functor),
  Arg3 = class('http://www.w3.org/2002/07/owl#Thing'),
  standardFunctor(Functor, SFunctor),
  standardArgs(Prefix, [Arg1,Arg2,Arg3], SArgs),
  STerm =.. [SFunctor|SArgs], !.

standardTerm(Prefix, Term, STerm) :-
  Term =.. [Functor|Args],
  standardFunctor(Functor, SFunctor),
  standardArgs(Prefix, Args, SArgs),
  STerm =.. [SFunctor|SArgs].

standardArgs(_Prefix, [], []).
standardArgs(Prefix, [A|As], [S|Ss]) :- standardTerm(Prefix, A, S), standardArgs(Prefix, As, Ss).

splitIRI(IRI, Left, Right) :-
  name(IRI, Chars),
  splitChars(Chars, LChars, RChars),
  left(Left, LChars),
  name(Right, RChars).

left([], []) :- !.
left(Name, Chars) :- name(Name, Chars).

splitChars([58|Right], [], Right) :- !.
splitChars([C|Chars], [C|Left], Right) :- splitChars(Chars, Left, Right).

% Write to Prolog file

writeTerms(_S, []) :- !.
writeTerms(S, [T|Ts]) :- writeTerm(S, T), writeTerms(S, Ts).
writeTerm(S, T) :- writeq(S, T), write(S, '.'), nl(S), nl(S).


integerAtom(Integer, Atom) :-
  number_chars(Integer, Chars),
  atom_chars(Atom, Chars).

cardinalityConstructor(objectexactcardinality).
cardinalityConstructor(objectmaxcardinality).
cardinalityConstructor(objectmincardinality).
cardinalityConstructor(dataexactcardinality).
cardinalityConstructor(datamaxcardinality).
cardinalityConstructor(datamincardinality).

% Standard spelling for functors

standardFunctor(F, SF) :- sf(F, SF), !.
standardFunctor(F, F).

sf(annotationassertion, annotationAssertion).
sf(annotationproperty, annotationProperty).
sf(annotationpropertydomain, annotationPropertyDomain).
sf(annotationpropertyrange, annotationPropertyRange).
sf(anonymousindividual, anonymousIndividual).
sf(asymmetricobjectproperty, asymmetricObjectProperty).
sf(classassertion, classAssertion).
sf(datacomplementof, dataComplementOf).
sf(dataexactcardinality, dataExactCardinality).
sf(dataoneof, dataOneOf).
sf(dataallvaluesfrom, dataAllValuesFrom).
sf(datahasvalue, dataHasValue).
sf(dataintersectionof, dataIntersectionOf).
sf(datamaxcardinality, dataMaxCardinality).
sf(datamincardinality, dataMinCardinality).
sf(dataoneof, dataOneOf).
sf(dataproperty, dataProperty).
sf(datapropertyassertion, dataPropertyAssertion).
sf(datapropertydomain, dataPropertyDomain).
sf(datapropertyrange, dataPropertyRange).
sf(datasomevaluesfrom, dataSomeValuesFrom).
sf(datatypedefinition, datatypeDefinition).
sf(datatyperestriction, datatypeRestriction).
sf(dataunionof, dataUnionOf).
sf(differentindividuals, differentIndividuals).
sf(disjointclasses, disjointClasses).
sf(disjointdataproperties, disjointDataProperties).
sf(disjointobjectproperties, disjointObjectProperties).
sf(disjointunion, disjointUnion).
sf(equivalentclasses, equivalentClasses).
sf(equivalentdataproperties, equivalentDataProperties).
sf(equivalentobjectproperties, equivalentObjectProperties).
sf(functionaldataproperty, functionalDataProperty).
sf(functionalobjectproperty, functionalObjectProperty).
sf(haskey, hasKey).
sf(inverseobjectproperties, inverseObjectProperties).
sf(inversefunctionalobjectproperty, inverseFunctionalObjectProperty).
sf(irreflexiveobjectproperty, irreflexiveObjectProperty).
sf(namedindividual, namedIndividual).
sf(negativedatapropertyassertion, negativeDataPropertyAssertion).
sf(negativeobjectpropertyassertion, negativeObjectPropertyAssertion).
sf(objectallvaluesfrom, objectAllValuesFrom).
sf(objectcomplementof, objectComplementOf).
sf(objectexactcardinality, objectExactCardinality).
sf(objectexistsself, objectExistsSelf).
sf(objecthasself, objectHasSelf).
sf(objecthasvalue, objectHasValue).
sf(objectintersectionof, objectIntersectionOf).
sf(objectinverseof, objectInverseOf).
sf(objectmaxcardinality, objectMaxCardinality).
sf(objectmincardinality, objectMinCardinality).
sf(objectoneof, objectOneOf).
sf(objectproperty, objectProperty).
sf(objectpropertyassertion, objectPropertyAssertion).
sf(objectpropertychain, objectPropertyChain).
sf(objectpropertydomain, objectPropertyDomain).
sf(objectpropertyrange, objectPropertyRange).
sf(objectsomevaluesfrom, objectSomeValuesFrom).
sf(objectunionof, objectUnionOf).
sf(reflexiveobjectproperty, reflexiveObjectProperty).
sf(sameindividual, sameIndividual).
sf(subannotationpropertyof, subAnnotationPropertyOf).
sf(subclassof, subClassOf).
sf(subdatapropertyof, subDataPropertyOf).
sf(subobjectpropertyof, subObjectPropertyOf).
sf(symmetricobjectproperty, symmetricObjectProperty).
sf(transitiveobjectproperty, transitiveObjectProperty).

