% grammar.pl Generator for OWL-DL
%
% Written by Richard Power and Sandra Williams
% Copyright (c) 2010 by Computing Department, The Open University
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

:- module(grammar, [generate/3]).

%==================================================
:- consult(compat).

:- use_module(library(lists)).

%==================================================

generate(Term, Lexicon, TSentence) :-
  s(Term, Lexicon, List, []), !,
  makeSentence(List, Sentence),
  user:termAtom(Term, Atom),
  sentenceTag(List, Sentence, Atom, TSentence).

generate(Term, _, TAtom) :- 
  user:termAtom(Term, Atom),
  sentenceTag(Atom, Atom, Atom, TAtom),
  nl, writeq(TAtom).


% DCG for OWL-DL axiom patterns

% Eliminate singleton lists resulting from aggregation

s(Term, Lexicon) -->
  {Term =.. [F, [Arg1]]},
  {NewTerm =.. [F, Arg1]},
  s(NewTerm, Lexicon).
 
s(Term, Lexicon) -->
  {Term =.. [F, [Arg1], Arg2]},
  {\+ is_list(Arg2)},
  {NewTerm =.. [F, Arg1, Arg2]},
  s(NewTerm, Lexicon).
 
s(Term, Lexicon) -->
  {Term =.. [F, Arg1, [Arg2]]},
  {\+ is_list(Arg1)},
  {NewTerm =.. [F, Arg1, Arg2]},
  s(NewTerm, Lexicon).
 
s(Term, Lexicon) -->
  {Term =.. [F, Arg1, [Arg2], Arg3]},
  {\+ is_list(Arg1)},
  {\+ is_list(Arg3)},
  {NewTerm =.. [F, Arg1, Arg2, Arg3]},
  s(NewTerm, Lexicon).
 
s(Term, Lexicon) -->
  {Term =.. [F, Arg1, Arg2, [Arg3]]},
  {\+ is_list(Arg1)},
  {\+ is_list(Arg2)},
  {NewTerm =.. [F, Arg1, Arg2, Arg3]},
  s(NewTerm, Lexicon).
 
/***** EQUIVALENT CLASSES *****/

% Basic form
s(equivalentClasses(Class1, Class2), Lexicon) -->
  {traceRule(s:equivalentClasses/2:singletonArgs)},
  np(a, Class1, Lexicon),
  [is], [defined], [as],
  np(a, Class2, Lexicon).

% More than two arguments, either originally or after aggregation
s(Term, Lexicon) -->
  {Term =.. [equivalentClasses|Classes]}, 
  {flatten(Classes, Args)},
  {length(Args, Length)},
  {Length > 2},   
  {ClassList =.. [classList|Args]},
  {traceRule(s:equivalentClasses/3)},
  [the], [following], [are], [equivalent], [':'],  
  npList(and, a, ClassList, Lexicon).

/***** DISJOINT CLASSES *****/

% Basic form
s(disjointClasses(Class1,Class2), Lexicon) -->
  {traceRule(s:disjointClasses/2)},
  np(no, Class1, Lexicon),
  [is],
  np(a, Class2, Lexicon).

% Aggregation Pred2 (over two predicate terms)
s(disjointClasses(Class,[Arg1, Arg2]), Lexicon) -->
  {\+ is_list(Class)},
  {ClassList =.. [classList|[Arg1, Arg2]]},
  {traceRule(s:disjointClasses/2:arg2IsList)},
  np(no, Class, Lexicon),
  [is], 
  npList(or, a, ClassList, Lexicon).

% Aggregation Pred2+ (over more than two predicate terms)
s(disjointClasses(Class,Classes), Lexicon) -->
  {\+ is_list(Class)},
  {is_list(Classes), length(Classes, N), N>2},
  {ClassList =.. [classList|Classes]},
  {traceRule(s:disjointClasses/2:arg2IsLongList)},
  np(no, Class, Lexicon),
  [is], [any], [of], [the], [following], [':'],  
  npList(or, a, ClassList, Lexicon).

% Aggregation Subj2 (over two subject terms)
s(disjointClasses([Arg1, Arg2], Class), Lexicon) -->
  {\+ is_list(Class)},
  {traceRule(s:disjointClasses/2:arg1IsList)},
  [no], noun(plural, Arg1, Lexicon), [or],
  noun(plural, Arg2, Lexicon), [are], 
  noun(plural, Class, Lexicon).

% Aggregation Subj2+ (over more than two subject terms)
% Also tried: 'An X cannot be any of the following: ...'
s(disjointClasses(Classes, Class), Lexicon) -->
  {\+ is_list(Class)},
  {is_list(Classes), length(Classes, N), N>2},
  {ClassList =.. [classList|Classes]},
  {traceRule(s:disjointClasses/2:arg1IsLongList)},
  [none], [of], [the], [following], [are],
  noun(plural, Class, Lexicon), [':'],  
  npList(or, plural, ClassList, Lexicon).

% More than two arguments in original axiom
s(Term, Lexicon) -->
  {Term =.. [disjointClasses|Classes]},
  {length(Classes, N), N>2},
  {ClassList =.. [classList|Classes]},
  {traceRule(s:disjointClasses:manyArguments)},
  [the], [following], [are], [disjoint], [':'],  
  npList(and, plural, ClassList, Lexicon).

/***** DISJOINT PROPERTIES *****/

% Basic form for disjoint object properties
s(Term, Lexicon) -->
  {Term =.. [disjointObjectProperties|Properties]},
  {traceRule(s:disjointObjectProperties:manyArguments)},
  [the], [following], [object], [properties], [are], [disjoint], [':'],  
  verbList(singular, Properties, Lexicon).

% Basic form for disjoint data properties
s(Term, Lexicon) -->
  {Term =.. [disjointDataProperties|Properties]},
  {traceRule(s:disjointDataProperties:manyArguments)},
  [the], [following], [data], [properties], [are], [disjoint], [':'],  
  verbList(singular, Properties, Lexicon).

/***** SUB-CLASS OF *****/

% Basic form ("every" can be switched to "a")
s(subClassOf(Class1,Class2), Lexicon) -->
  {traceRule(s:subClassOf/2)},
  np(a, Class1, Lexicon),
  vp(singular, Class2, Lexicon).

% Aggregation Pred2 with initial restriction (avoiding "something that")
s(subClassOf(Class, [Arg1, Arg2]), Lexicon) -->
  {ClassList =.. [classList|[Arg1, Arg2]]},
  {Arg1 \= class(_)},
  {traceRule(s:subClassOf/2:arg2IsList)},
  np(a, Class, Lexicon),
  [both],
  vpList(and, singular, ClassList, Lexicon).

% Aggregation Pred2
s(subClassOf(Class, [Arg1, Arg2]), Lexicon) -->
  {ClassList =.. [classList|[Arg1, Arg2]]},
  {traceRule(s:subClassOf/2:arg2IsList)},
  np(a, Class, Lexicon),
  [is], [both],
  npList(and, a, ClassList, Lexicon).

% Aggregation Pred2+ with initial restriction (avoiding "something that")
s(subClassOf(Class, Classes), Lexicon) -->
  {is_list(Classes), length(Classes, N), N>2},
  {Classes = [First|_], First \= class(_)},
  {ClassList =.. [classList|Classes]},
  {traceRule(s:subClassOf/2:arg2IsLongList)},
  np(a, Class, Lexicon),
  vpList(and, singular, ClassList, Lexicon).

% Aggregation Pred2+
s(subClassOf(Class, Classes), Lexicon) -->
  {is_list(Classes), length(Classes, N), N>2},
  {ClassList =.. [classList|Classes]},
  {traceRule(s:subClassOf/2:arg2IsLongList)},
  np(a, Class, Lexicon),
  [is], [all], [of], [the], [following], [':'], 
  npList(and, a, ClassList, Lexicon).

% Aggregation Subj2
s(subClassOf([Arg1, Arg2], Class), Lexicon) -->
  {ClassList =.. [classList|[Arg1, Arg2]]},
  {traceRule(s:subClassOf/2:arg1IsList)},
  npList(and, plural, ClassList, Lexicon),
%  [are], [kinds], [of],
%  np(singular, Class, Lexicon), !.
  vp(plural, Class, Lexicon), !.

% Aggregation Subj2+
s(subClassOf(Classes, Class), Lexicon) -->
  {is_list(Classes), length(Classes, N), N>2},
  {ClassList =.. [classList|Classes]},
  {traceRule(s:subClassOf/2:arg1IsLongList)},
  [the], [following],
%  [are], [kinds], [of],
%  np(singular, Class, Lexicon), [':'],  
%  npList(and, plural, ClassList, Lexicon), !.
  vp(plural, Class, Lexicon), [':'],  
  npList(and, plural, ClassList, Lexicon), !.

/***** CLASS ASSERTION *****/

% Basic form
s(classAssertion(Class, namedIndividual(IRI)), Lexicon) -->
  {traceRule(s:classAssertion/2:classIndividual)},
  name(namedIndividual(IRI), Lexicon),
  vp(singular, Class, Lexicon).

s(classAssertion(Class, anonymousIndividual(_IRI)), Lexicon) -->
  {traceRule(s:classAssertion/2:classIndividual)},
  [there],
  vp(singular, Class, Lexicon).

% Aggregation Pred2
s(classAssertion([C1, C2], Individual), Lexicon) -->
  {\+ is_list(Individual)},
  {ClassList =.. [classList|[C1, C2]]},
  {traceRule(s:classAssertion/2:twoClassIndividual)},
  name(Individual, Lexicon),
  [is],
  npList(and, a, ClassList, Lexicon).

% Aggregation Pred2+
s(classAssertion(Classes, Individual), Lexicon) -->
  {\+ is_list(Individual)},
  {is_list(Classes), length(Classes, N), N>2},
  {ClassList =.. [classList|Classes]},
  {traceRule(s:classAssertion/2:twoPlusClassIndividual)},
  name(Individual, Lexicon),
  [is], [all], [of], [the], [following], [':'],
  npList(and, a, ClassList, Lexicon).

% Aggregation Subj2
s(classAssertion(Class, [I1, I2]), Lexicon) -->
  {IndividualList =.. [individualList|[I1, I2]]},
  {traceRule(s:classAssertion/2:twoIndividuals)},
  npList(and, singular, IndividualList, Lexicon),
  [are], np(plural, Class, Lexicon). 

% Aggregation Subj2+
s(classAssertion(Class, Individuals), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {IndividualList =.. [individualList|Individuals]},
  {traceRule(s:classAssertion/2:listOfIndividuals)},
  [the], [following], [are], np(plural, Class, Lexicon), [':'],  
  npList(and, singular, IndividualList, Lexicon).

/***** OBJECT PROPERTY ASSERTION (3-args) *****/

% Basic form
s(objectPropertyAssertion(Property,Individual1,Individual2), Lexicon) -->
  {traceRule(s:objectPropertyAssertion/3:propertyIndividualIndividual)},
  name(Individual1, Lexicon),
  verb(singular, Property, Lexicon),
  name(Individual2, Lexicon).

% Aggregation Subj2
s(objectPropertyAssertion(Property, [I1, I2], Individual), Lexicon) -->
  {traceRule(s:objectPropertyAssertion/3:propertyTwoIndividualsIndividual)},
  {IndividualList =.. [individualList|[I1, I2]]},
  npList(and, singular, IndividualList, Lexicon),
  verb(plural, Property, Lexicon),
  name(Individual, Lexicon).

% Aggregation Subj2+
s(objectPropertyAssertion(Property, Individuals, Individual), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:objectPropertyAssertion/3:propertyIndividualListIndividual)},
  {IndividualList =.. [individualList|Individuals]},
  [the], [following],
  verb(plural, Property, Lexicon), 
  name(Individual, Lexicon), [':'],
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Obj2
s(objectPropertyAssertion(Property,Individual,[I1, I2]), Lexicon) -->
  {traceRule(s:objectPropertyAssertion/3:propertyIndividualTwoIndividuals)},
  {IndividualList =.. [individualList|[I1, I2]]},
  name(Individual, Lexicon),
  verb(singular, Property, Lexicon),
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Obj2+
s(objectPropertyAssertion(Property, Individual, Individuals), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:objectPropertyAssertion/3:propertyIndividualIndividualList)},
  {IndividualList =.. [individualList|Individuals]},
  name(Individual, Lexicon), 
  verb(singular, Property, Lexicon),
  npList(and, singular, IndividualList, Lexicon).

/***** DATA PROPERTY ASSERTION (3-args) *****/
s(dataPropertyAssertion(Property,Individual,Constant), Lexicon) -->
  {traceRule(s:dataPropertyAssertion/2:propertyIndividualConstant)},
  name(Individual, Lexicon),
  verb(singular, Property, Lexicon),
  name(Constant, Lexicon).

% Aggregation Subj2
s(dataPropertyAssertion(Property, [I1, I2], Individual), Lexicon) -->
  {traceRule(s:dataPropertyAssertion/3:propertyTwoIndividualsIndividual)},
  {IndividualList =.. [individualList|[I1, I2]]},
  npList(and, singular, IndividualList, Lexicon),
  verb(plural, Property, Lexicon),
  name(Individual, Lexicon).

% Aggregation Subj2+
s(dataPropertyAssertion(Property, Individuals, Individual), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:dataPropertyAssertion/3:propertyIndividualListIndividual)},
  {IndividualList =.. [individualList|Individuals]},
  [the], [following],
  verb(plural, Property, Lexicon), 
  name(Individual, Lexicon), [':'],
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Obj2
s(dataPropertyAssertion(Property,Individual,[I1, I2]), Lexicon) -->
  {traceRule(s:dataPropertyAssertion/3:propertyIndividualTwoIndividuals)},
  {IndividualList =.. [individualList|[I1, I2]]},
  name(Individual, Lexicon),
  verb(singular, Property, Lexicon),
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Obj2+
s(dataPropertyAssertion(Property, Individual, Individuals), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:dataPropertyAssertion/3:propertyIndividualIndividualList)},
  {IndividualList =.. [individualList|Individuals]},
  name(Individual, Lexicon), 
  verb(singular, Property, Lexicon),
  npList(and, singular, IndividualList, Lexicon).

/***** NEGATIVE OBJECT PROPERTY ASSERTION (3-args) *****/

% Basic form
s(negativeObjectPropertyAssertion(Property,Individual1,Individual2), Lexicon) -->
  {traceRule(s:negativeObjectPropertyAssertion/3:propertyIndividualIndividual)},
  [it], [is], [not], [true], [that],
  name(Individual1, Lexicon),
  verb(singular, Property, Lexicon),
  name(Individual2, Lexicon).

% Aggregation Subj2
s(negativeObjectPropertyAssertion(Property, [I1, I2], Individual), Lexicon) -->
  {traceRule(s:negativeObjectPropertyAssertion/3:propertyTwoIndividualsIndividual)},
  {IndividualList =.. [individualList|[I1, I2]]},
  [it], [is], [not], [true], [that],
  npList(or, singular, IndividualList, Lexicon),
  verb(plural, Property, Lexicon),
  name(Individual, Lexicon).

% Aggregation Subj2+
s(negativeObjectPropertyAssertion(Property, Individuals, Individual), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:negativeObjectPropertyAssertion/3:propertyIndividualListIndividual)},
  {IndividualList =.. [individualList|Individuals]},
  [none], [of], [the], [following],
  verb(plural, Property, Lexicon), 
  name(Individual, Lexicon), [':'],
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Obj2
s(negativeObjectPropertyAssertion(Property,Individual,[I1, I2]), Lexicon) -->
  {traceRule(s:negativeObjectPropertyAssertion/3:propertyIndividualTwoIndividuals)},
  {IndividualList =.. [individualList|[I1, I2]]},
  [it], [is], [not], [true], [that],
  name(Individual, Lexicon),
  verb(singular, Property, Lexicon),
  npList(or, singular, IndividualList, Lexicon).

% Aggregation Obj2+
s(negativeObjectPropertyAssertion(Property, Individual, Individuals), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:negativeObjectPropertyAssertion/3:propertyIndividualIndividualList)},
  {IndividualList =.. [individualList|Individuals]},
  [it], [is], [not], [true], [that],
  name(Individual, Lexicon), 
  verb(singular, Property, Lexicon),
  npList(or, singular, IndividualList, Lexicon).

/***** NEGATIVE DATA PROPERTY ASSERTION (3-args) *****/
s(negativeDataPropertyAssertion(Property,Individual,Constant), Lexicon) -->
  {traceRule(s:negativeDataPropertyAssertion/3:propertyIndividualConstant)},
  [it], [is], [not], [true], [that],
  name(Individual, Lexicon),
  verb(singular, Property, Lexicon),
  name(Constant, Lexicon).

% Aggregation Subj2
s(negativeDataPropertyAssertion(Property, [I1, I2], Individual), Lexicon) -->
  {traceRule(s:negativeDataPropertyAssertion/3:propertyTwoIndividualsIndividual)},
  {IndividualList =.. [individualList|[I1, I2]]},
  [it], [is], [not], [true], [that],
  npList(or, singular, IndividualList, Lexicon),
  verb(plural, Property, Lexicon),
  name(Individual, Lexicon).

% Aggregation Subj2+
s(negativeDataPropertyAssertion(Property, Individuals, Individual), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:negativeDataPropertyAssertion/3:propertyIndividualListIndividual)},
  {IndividualList =.. [individualList|Individuals]},
  [none], [of], [the], [following],
  verb(plural, Property, Lexicon), 
  name(Individual, Lexicon), [':'],
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Obj2
s(negativeDataPropertyAssertion(Property,Individual,[I1, I2]), Lexicon) -->
  {traceRule(s:negativeDataPropertyAssertion/3:propertyIndividualTwoIndividuals)},
  {IndividualList =.. [individualList|[I1, I2]]},
  [it], [is], [not], [true], [that],
  name(Individual, Lexicon),
  verb(singular, Property, Lexicon),
  npList(or, singular, IndividualList, Lexicon).

% Aggregation Obj2+
s(negativeDataPropertyAssertion(Property, Individual, Individuals), Lexicon) -->
  {is_list(Individuals), length(Individuals, N), N>2},
  {traceRule(s:negativeDataPropertyAssertion/3:propertyIndividualIndividualList)},
  {IndividualList =.. [individualList|Individuals]},
  [it], [is], [not], [true], [that],
  name(Individual, Lexicon), 
  verb(singular, Property, Lexicon),
  npList(or, singular, IndividualList, Lexicon).

/***** FUNCTIONAL OBJECT PROPERTY *****/

% Basic form
s(functionalObjectProperty(Property), Lexicon) -->
  {traceRule(s:functionalObjectProperty/1:property)},
  [the], [object], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [functional].

% Aggregation
s(functionalObjectProperty(Properties), Lexicon) -->
  {is_list(Properties), length(Properties, N), N>1},
  {traceRule(s:functionalObjectProperty/list:property)},
  [the], [following], [object], [properties], [are], [functional], [':'], 
  verbList(singular, Properties, Lexicon).

/***** FUNCTIONAL DATA PROPERTY *****/

% Basic form
s(functionalDataProperty(Property), Lexicon) -->
  {traceRule(s:functionalDataProperty/1:property)},
  [the], [data], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [functional].

% Aggregation
s(functionalDataProperty(Properties), Lexicon) -->
  {is_list(Properties), length(Properties, N), N>1},
  {traceRule(s:functionalDataProperty/list:property)},
  [the], [following], [data], [properties], [are], [functional], [':'], 
  verbList(singular, Properties, Lexicon).

/***** INVERSE-FUNCTIONAL OBJECT PROPERTY *****/

% Basic form
s(inverseFunctionalObjectProperty(Property), Lexicon) -->
  {traceRule(s:inverseFunctionalObjectProperty/1:property)},
  [the], [object], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], ['inverse-functional'].

% Aggregation
s(inverseFunctionalObjectProperty(Properties), Lexicon) -->
  {is_list(Properties), length(Properties, N), N>1},
  {traceRule(s:inverseFunctionalObjectProperty/list:property)},
  [the], [following], [object], [properties], [are], ['inverse-functional'], [':'], 
  verbList(singular, Properties, Lexicon).

/***** SYMMETRIC OBJECT PROPERTY *****/

% Basic form
s(symmetricObjectProperty(Property), Lexicon) -->
  {traceRule(s:symmetricObjectProperty/1:property)},
  [the], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [symmetric].

% Aggregation
s(symmetricObjectProperty(Properties), Lexicon) -->
  {traceRule(s:symmetricObjectProperty/list:property)},
  [the], [following], [properties], [are], [symmetric], [':'], 
  verbList(singular, Properties, Lexicon).

/***** ASYMMETRIC OBJECT PROPERTY *****/

% Basic form
s(asymmetricObjectProperty(Property), Lexicon) -->
  {traceRule(s:asymmetricObjectProperty/1:property)},
  [the], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [asymmetric].

% Aggregation
s(asymmetricObjectProperty(Properties), Lexicon) -->
  {traceRule(s:asymmetricObjectProperty/list:property)},
  [the], [following], [properties], [are], [asymmetric], [':'], 
  verbList(singular, Properties, Lexicon).

/***** TRANSITIVE OBJECT PROPERTY *****/

% Basic form
s(transitiveObjectProperty(Property), Lexicon) -->
  {traceRule(s:transitiveObjectProperty/1:property)},
  [the], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [transitive].

% Aggregation
s(transitiveObjectProperty(Properties), Lexicon) -->
  {traceRule(s:transitiveObjectProperty/list:property)},
  [the], [following], [properties], [are], [transitive], [':'], 
  verbList(singular, Properties, Lexicon).

/***** REFLEXIVE OBJECT PROPERTY *****/

% Basic form
s(reflexiveObjectProperty(Property), Lexicon) -->
  {traceRule(s:reflexiveObjectProperty/1:property)},
  [the], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [reflexive].

% Aggregation
s(reflexiveObjectProperty(Properties), Lexicon) -->
  {traceRule(s:reflexiveObjectProperty/list:property)},
  [the], [following], [properties], [are], [reflexive], [':'], 
  verbList(singular, Properties, Lexicon).

/***** IRREFLEXIVE OBJECT PROPERTY *****/

% Basic form
s(irreflexiveObjectProperty(Property), Lexicon) -->
  {traceRule(s:irreflexiveObjectProperty/1:property)},
  [the], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [irreflexive].

% Aggregation
s(irreflexiveObjectProperty(Properties), Lexicon) -->
  {traceRule(s:irreflexiveObjectProperty/list:property)},
  [the], [following], [properties], [are], [irreflexive], [':'], 
  verbList(singular, Properties, Lexicon).

/***** SUB-OBJECT PROPERTY OF *****/

% Basic form
s(subObjectPropertyOf(Property1,Property2), Lexicon) -->
  {traceRule(s:subObjectPropertyOf/2:propertyProperty)},
  [the], [property],
  ['['], verb(singular, Property1, Lexicon), [']'],
  [is], [a], ['sub-property'], [of],
  ['['], verb(singular, Property2, Lexicon), [']'].

% Subject aggregation
s(subObjectPropertyOf(Properties,Property), Lexicon) -->
  {traceRule(s:subObjectPropertyOf/2:propertylistProperty)},
  [the], [following], [properties], [are], ['sub-properties'], [of],
  ['['], verb(singular, Property, Lexicon), [']'], [':'], 
  verbList(singular, Properties, Lexicon).

% Object aggregation
s(subObjectPropertyOf(Property,Properties), Lexicon) -->
  {traceRule(s:subObjectPropertyOf/2:propertylistProperty)},
  [the], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [a], ['sub-property'], [of],
  [the], [following], [properties], [':'], 
  verbList(singular, Properties, Lexicon).

% Form with ObjectPropertyChain, e.g. subObjectPropertyOf(objectPropertyChain(objectProperty(#hasBoundary),objectProperty(#boundaryOf)),[objectProperty(#borders)]).
s(subObjectPropertyOf(Term, Property2), Lexicon) -->
  {Term =.. [objectPropertyChain,Property1|PropList]},
  {PropertyChain =.. [propertyChain|PropList]},
  {traceRule(s:subObjectPropertyOf/2:objectPropertyChain)},
  [if], ['X'],
  verb(singular, Property1, Lexicon),
  npList(_Det, _Conj, PropertyChain, Lexicon),
  ['Y'], [then], ['X'],
  verb(singular, Property2, Lexicon),
  ['Y'].

% Form with ObjectPropertyChain aggregated object
s(subObjectPropertyOf(Term, [Property2]), Lexicon) -->
  {Term =.. [objectPropertyChain,Property1|PropList]},
  {PropertyChain =.. [propertyChain|PropList]},
  {traceRule(s:subObjectPropertyOf/2:objectPropertyChain)},
  [if], ['X'],
  verb(singular, Property1, Lexicon),
  npList(_Det, _Conj, PropertyChain, Lexicon),
  ['Y'], [then], ['X'],
  verb(singular, Property2, Lexicon),
  ['Y'].


/***** SUB-DATA PROPERTY OF *****/

% Basic form
s(subDataPropertyOf(Property1,Property2), Lexicon) -->
  {traceRule(s:subDataPropertyOf/2:propertyProperty)},
  [the], [property],
  ['['], verb(singular, Property1, Lexicon), [']'],
  [is], [a], ['sub-property'], [of],
  ['['], verb(singular, Property2, Lexicon), [']'].

% Subject aggregation
s(subDataPropertyOf(Properties,Property), Lexicon) -->
  {traceRule(s:subObjectPropertyOf/2:propertylistProperty)},
  [the], [following], [properties], [are], ['sub-properties'], [of],
  ['['], verb(singular, Property, Lexicon), [']'], [':'], 
  verbList(singular, Properties, Lexicon).

% Object aggregation
s(subDataPropertyOf(Property,Properties), Lexicon) -->
  {traceRule(s:subObjectPropertyOf/2:propertylistProperty)},
  [the], [property],
  ['['], verb(singular, Property, Lexicon), [']'],
  [is], [a], ['sub-property'], [of],
 [the], [following], [properties],  [':'], 
  verbList(singular, Properties, Lexicon).

/***** EQUIVALENT OBJECT PROPERTIES *****/

% Basic form
s(equivalentObjectProperties(Property1,Property2), Lexicon) -->
  {traceRule(s:equivalentObjectProperties/2:propertyProperty)},
  [the], [properties],
  ['['], verb(singular, Property1, Lexicon), [']'],
  [and],
  ['['], verb(singular, Property2, Lexicon), [']'],
  [are], [equivalent].

% More than two arguments, either originally or after aggregation
s(Term, Lexicon) -->
  {Term =.. [equivalentObjectProperties|Args]}, 
  {flatten(Args, Properties)},
  {length(Properties, Length)},
  {Length > 2},   
  {traceRule(s:equivalentObjectProperties/2:propertylistProperty)},
  [the], [following], [object], [properties], [are], [equivalent], [':'], 
  verbList(singular, Properties, Lexicon).

/***** EQUIVALENT DATA PROPERTIES *****/

% Basic form
s(equivalentDataProperties(Property1,Property2), Lexicon) -->
  {traceRule(s:equivalentDataProperties/2:propertyProperty)},
  [the], [properties],
  ['['], verb(singular, Property1, Lexicon), [']'],
  [and],
  ['['], verb(singular, Property2, Lexicon), [']'],
  [are], [equivalent].

% More than two arguments, either originally or after aggregation
s(Term, Lexicon) -->
  {Term =.. [equivalentDataProperties|Args]}, 
  {flatten(Args, Properties)},
  {length(Properties, Length)},
  {Length > 2},   
  {traceRule(s:equivalentDataProperties/2:propertylistProperty)},
  [the], [following], [data], [properties], [are], [equivalent], [':'], 
  verbList(singular, Properties, Lexicon).

/***** INVERSE OBJECT PROPERTIES *****/

% Basic form
s(inverseObjectProperties(Property1,Property2), Lexicon) -->
  {traceRule(s:inverseObjectProperties/2:propertyProperty)},
  ['X'], verb(singular, Property1, Lexicon), ['Y'],
  [if], [and], [only], [if],
  ['Y'], verb(singular, Property2, Lexicon), ['X'].

/***** OBJECT PROPERTY DOMAIN *****/

% Basic form
s(objectPropertyDomain(Property,Class), Lexicon) -->
  {traceRule(s:objectPropertyDomain/2:propertyClass)},
  [if], ['X'],
  verb(singular, Property, Lexicon),
  ['Y'], ['then'], 
% ['necessarily'], 
  ['X'],
  vp(singular, Class, Lexicon).

% Aggregated
s(objectPropertyDomain(Properties,Class), Lexicon) -->
  {traceRule(s:objectPropertyDomain/2:propertylistClass)},
  [if], [any], [of], [the], [following], [relationships], 
  [hold], [between], ['X'], [and], ['Y'], ['then'], ['X'],
%  [must], [be], 
  [is], 
  np(a, Class, Lexicon),
  [':'],
  verbList(singular, Properties, Lexicon).

/***** OBJECT PROPERTY RANGE *****/

% Basic form
s(objectPropertyRange(Property,Class), Lexicon) -->
  {traceRule(s:objectPropertyRange/2:propertyClass)},
  [if], ['X'],
  verb(singular, Property, Lexicon),
  ['Y'], ['then'], 
% ['necessarily'], 
  ['Y'],
  vp(singular, Class, Lexicon).

% Aggregated
s(objectPropertyRange(Properties,Class), Lexicon) -->
  {traceRule(s:objectPropertyRange/2:propertylistClass)},
  [if], [any], [of], [the], [following], [relationships], 
  [hold], [between], ['X'], [and], ['Y'], ['then'], ['Y'],
 % [must], [be], 
  [is], 
  np(a, Class, Lexicon),
  [':'],
  verbList(singular, Properties, Lexicon).

/***** DATA PROPERTY DOMAIN *****/

% Basic form
s(dataPropertyDomain(Property,Class), Lexicon) -->
  {traceRule(s:dataPropertyDomain/2:propertyClass)},
  [if], ['X'],
  verb(singular, Property, Lexicon),
  ['Y'], ['then'], 
% ['necessarily'], 
  ['X'],
  vp(singular, Class, Lexicon).

% Aggregated
s(dataPropertyDomain(Properties,Class), Lexicon) -->
  {traceRule(s:dataPropertyDomain/2:propertylistClass)},
  [if], [any], [of], [the], [following], [relationships], 
  [hold], [between], ['X'], [and], ['Y'], ['then'], ['X'],
%  [must], [be], 
  [is], 
  np(a, Class, Lexicon),
  [':'],
  verbList(singular, Properties, Lexicon).

/***** DATA PROPERTY RANGE *****/

% Basic form
s(dataPropertyRange(Property,Class), Lexicon) -->
  {traceRule(s:dataPropertyRange/2:propertyClass)},
  [if], ['X'],
  verb(singular, Property, Lexicon),
  ['Y'], ['then'], 
% ['necessarily'], 
  ['Y'],
  vp(singular, Class, Lexicon).

% Aggregated
s(dataPropertyRange(Properties,Class), Lexicon) -->
  {traceRule(s:dataPropertyRange/2:propertylistClass)},
  [if], [any], [of], [the], [following], [relationships], 
  [hold], [between], ['X'], [and], ['Y'], ['then'], ['Y'],
%  [must], [be], 
  [is], 
  np(a, Class, Lexicon),
  [':'],
  verbList(singular, Properties, Lexicon).

/***** SAME INDIVIDUAL *****/

% Basic form
s(sameIndividual(Individual1,Individual2), Lexicon) -->
  {traceRule(s:sameIndividual/2:singletonArgs)},
  name(Individual1, Lexicon),
  [and],
  name(Individual2, Lexicon),
  [are], [the], [same], [individual].

% More than one argument, either originally or through aggregation
s(Term, Lexicon) -->
  {Term =.. [sameIndividual|Individuals]}, 
  {flatten(Individuals, Args)},    
  {IndividualList =.. [individualList|Args]},
  {traceRule(s:sameIndividual/3)},
  [the], [following], [terms], [denote], [the], [same], [individual], [':'],  
  npList(and, singular, IndividualList, Lexicon).

/***** DIFFERENT INDIVIDUALS *****/

% Basic form
s(differentIndividuals(Individual1,Individual2), Lexicon) -->
  {traceRule(s:differentIndividuals/2:individualIndividual)},
  name(Individual1, Lexicon),
  [and],
  name(Individual2, Lexicon),
  [are], [different], [individuals].

% More than two arguments in original axiom
s(Term, Lexicon) -->
  {Term =.. [differentIndividuals|Individuals]},
  {length(Individuals,N), N>2},
  {traceRule(s:differentIndividuals/many:individualIndividual)},
  {IndividualList =.. [individualList|Individuals]},
  [the], [following], [are], [different], [individuals], [':'],
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Pred2
s(differentIndividuals(Individual, [Arg1, Arg2]), Lexicon) -->
  {IndividualList =.. [individualList|[Arg1, Arg2]]},
  {traceRule(s:differentIndividuals/2:individualIndividuallist)},
  name(Individual, Lexicon),
  [is], [a], [different], [individual], [from],
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Pred2+
s(differentIndividuals(Individual, [Arg1, Arg2, Arg3|Args]), Lexicon) -->
  {IndividualList =.. [individualList|[Arg1, Arg2, Arg3|Args]]},
  {traceRule(s:differentIndividuals/2:individualIndividuallist)},
  name(Individual, Lexicon),
  [is], [a], [different], [individual], [from], [any], [of], [the], [following], [':'],
  npList(and, singular, IndividualList, Lexicon).

% Aggregation Subj2
s(differentIndividuals([Arg1, Arg2], Individual), Lexicon) -->
  {IndividualList =.. [individualList|[Arg1, Arg2]]},
  {traceRule(s:differentIndividuals/2:individualIndividuallist)},
  npList(and, singular, IndividualList, Lexicon),
  [are], [both], [different], [individuals], [from],
  name(Individual, Lexicon).

% Aggregation Subj2+
s(differentIndividuals([Arg1, Arg2, Arg3|Args], Individual), Lexicon) -->
  {IndividualList =.. [individualList|[Arg1, Arg2, Arg3|Args]]},
  {traceRule(s:differentIndividuals/2:individualIndividuallist)},
  name(Individual, Lexicon),
  [is], [a], [different], [individual], [from], [any], [of], [the], [following], [':'],
  npList(and, singular, IndividualList, Lexicon).

/***** CLASS *****/

% Determiners obtain number from determiner rule
np(Det, class(IRI), Lexicon) -->
  {traceRule(np:class/1:classIRI)},
  det(Det, Number, class(IRI), Lexicon),
  noun(Number, class(IRI), Lexicon).

/***** DATATYPE *****/

np(Det, datatype(IRI), Lexicon) -->
  {traceRule(np:datatype/1:datatypeIRI)},
  det(Det, Number, datatype(IRI), Lexicon),
  noun(Number, datatype(IRI), Lexicon).

/***** OBJECT or DATA INTERSECTION OF (ATOMIC FIRST ARGUMENT) *****/

np(Det, objectIntersectionOf(class(IRI),Class), Lexicon) -->
  {traceRule(np:objectIntersectionOf/2:classIRIClass)},
  det(Det, Number, class(IRI), Lexicon),
  noun(Number, class(IRI), Lexicon),
  [that],
  vp(Number, Class, Lexicon).

np(Det, dataIntersectionOf(datatype(IRI),Datatype), Lexicon) -->
  {traceRule(np:dataIntersectionOf/2:dataIRIDatatype)},
  det(Det, Number, class(IRI), Lexicon),
  noun(Number, datatype(IRI), Lexicon),
  [that],
  vp(Number, Datatype, Lexicon).

/***** VERB PHRASE CONVERSIONS FOR CLASS CONSTRUCTORS *****/

np(a, Term, Lexicon) -->
  {Term =.. [Functor|_Arguments]},
  {classConstructor(Functor)},
  {traceRule(np:a:classConstructor:classesList)},
  [something], [that],
  vp(singular, Term, Lexicon).

np(every, Term, Lexicon) -->
  {Term =.. [Functor|_Arguments]},
  {classConstructor(Functor)},
  {traceRule(np:every:classConstructor:classesList)},
  [everything], [that],
  vp(singular, Term, Lexicon).

np(no, Term, Lexicon) -->
  {Term =.. [Functor|_Arguments]},
  {classConstructor(Functor)},
  {traceRule(np:no:classConstructor:classesList)},
  [nothing], [that],
  vp(singular, Term, Lexicon).

np(Numerical, Term, Lexicon) -->
  {numericalQuantifier(Numerical)},
  {Term =.. [Functor|_Arguments]},
  {classConstructor(Functor)},
  {traceRule(np:classConstructor:exactly)},
  det(Numerical, _Number, class(thing), Lexicon),
  [thing], [that],
  vp(singular, Term, Lexicon).

np(plural, Term, Lexicon) -->
  {Term =.. [Functor|_Arguments]},
  {classConstructor(Functor)},
  {traceRule(np:a:classConstructor:classesList)},
  [things], [that],
  vp(plural, Term, Lexicon).

% At present we have enumerated classes only with one argument

/***** OBJECT ONE OF *****/

% Single argument
np(_Det, objectOneOf(Individual), Lexicon) -->
  {traceRule(np:objectOneOf/1:individual)},
  name(Individual, Lexicon).

% Two or more arguments
np(_Det, Term, Lexicon) -->
  {Term =.. [objectOneOf|Individuals]},
  {length(Individuals, Length)},
  {Length > 1},
  {IndividualList =.. [individualList|Individuals]},
  {traceRule(np:objectOneOf/multiple:individuals)},
  npList(and, singular, IndividualList, Lexicon). 

/***** DATA ONE OF *****/

np(_Det, dataOneOf(Literal), Lexicon) -->
  {traceRule(np:det:dataOneOf/1:literal)},
  name(Literal, Lexicon).

% Two or more arguments
np(_Det, Term, Lexicon) -->
  {Term =.. [dataOneOf|Literals]},
  {length(Literals, Length)},
  {Length > 1},
  {IndividualList =.. [individualList|Literals]},
  {traceRule(np:dataOneOf/multiple:literals)},
  npList(and, singular, IndividualList, Lexicon). 

% Lists of classes and individuals resulting from aggregation

/***** CLASS LIST *****/

% Experimental rules for listing VPs (avoiding "something that")
vpList(Conj, Number, classList(Class1, Class2), Lexicon) -->
  {traceRule(vp:classList:twoclasses)},
  vp(Number, Class1, Lexicon), 
  [','], 
  [Conj],
  vp(Number, Class2, Lexicon).

vpList(Conj, Number, Term, Lexicon) -->
  {Term =.. [classList,Class1,Class2,Class3|Rest]},
  {NextTerm =.. [classList,Class2,Class3|Rest]},
  {traceRule(vpList:classList:twoplusclasses)},
  vp(Number, Class1, Lexicon),
  [','], 
  vpList(Conj, Number, NextTerm, Lexicon).

npList(Conj, Det, classList(Class1, Class2, numberOfElements(N) ), Lexicon) -->
  {traceRule(np:classList:twoclasses)},
  np(Det, Class1, Lexicon), 
  [Conj],
  np(Det, Class2, Lexicon),
  [','], 
  truncatedListPhrase(N).

npList(Conj, Det, classList(Class1, Class2), Lexicon) -->
  {traceRule(np:classList:twoclasses)},
  np(Det, Class1, Lexicon), 
  [','], 
  [Conj],
  np(Det, Class2, Lexicon).

npList(Conj, Det, Term, Lexicon) -->
  {Term =.. [classList,Class1,Class2,Class3|Rest]},
  {NextTerm =.. [classList,Class2,Class3|Rest]},
  {traceRule(npList:classList:twoplusclasses)},
  np(Det, Class1, Lexicon),
  [','], 
  npList(Conj, Det, NextTerm, Lexicon).

/***** INDIVIDUAL LIST *****/

npList(Conj, _Det, individualList(Individual1, Individual2,  numberOfElements(N) ), Lexicon) -->
  {traceRule(npList:individualList:twoindividuals)},
  name(Individual1, Lexicon), 
  [Conj],
  name(Individual2, Lexicon),
  [','], 
  truncatedListPhrase(N).

npList(Conj, _Det, individualList(Individual1, Individual2), Lexicon) -->
  {traceRule(npList:individualList:twoindividuals)},
  name(Individual1, Lexicon), 
  [Conj],
  name(Individual2, Lexicon).

npList(Conj, Det, Term, Lexicon) -->
  {Term =.. [individualList,Individual1,Individual2,Individual3|Rest]},
  {NextTerm =.. [individualList,Individual2,Individual3|Rest]},
  {traceRule(npList:individualList:twoplusindividuals)},
  name(Individual1, Lexicon),
  [','], 
  npList(Conj, Det, NextTerm, Lexicon).


/***** PROPERTY CHAIN *****/

npList(_Conj, _Det, propertyChain(Property), Lexicon) -->
  {traceRule(npList:propertyChain:oneproperty)},
  [something], [that],
  verb(singular, Property, Lexicon).  

npList(_Conj, _Det, propertyChain(Property, Properties), Lexicon) -->
  {traceRule(npList:propertyChain:twoplusproperties)},
  [something], [that],
  verb(singular, Property, Lexicon),  
  npList(_, _, propertyChain(Properties), Lexicon).
% npList(_Conj, _Det, propertyChain(Properties), Lexicon).



/***** OBJECT INTERSECTION OF *****/

% Two arguments
vp(Number, objectIntersectionOf(Class1, Class2), Lexicon) -->
  {traceRule(vp:objectIntersectionOf/2:classClass)},
  vp(Number, Class1, Lexicon),
  [','], [and], 
  vp(Number, Class2, Lexicon).

% More than two arguments
vp(Number, Term, Lexicon) -->
  {Term =.. [objectIntersectionOf,Class1,Class2,Class3|Rest]},
  {NextTerm =.. [objectIntersectionOf,Class2,Class3|Rest]},
  {traceRule(vp:objectIntersectionOf/3:classClassRest)},
  vp(Number, Class1, Lexicon),
  [','],  
  vp(Number, NextTerm, Lexicon).

/***** OBJECT UNION OF *****/

% Two arguments
vp(Number, objectUnionOf(Class1, Class2), Lexicon) -->
  {traceRule(vp:objectUnionOf/2:classClass)},
  vp(Number, Class1, Lexicon),
  [','], [or], 
  vp(Number, Class2, Lexicon).

% More than two arguments
vp(Number, Term, Lexicon) -->
  {Term =.. [objectUnionOf,Class1,Class2,Class3|Rest]},
  {NextTerm =.. [objectUnionOf,Class2,Class3|Rest]},
  {traceRule(vp:objectUnionOf/3:classClassRest)},
  vp(Number, Class1, Lexicon),
  [','],  
  vp(Number, NextTerm, Lexicon).

/***** OBJECT SOME VALUES FROM *****/
vp(Number, objectSomeValuesFrom(Property,Class), Lexicon) -->
  {traceRule(vp:objectSomeValuesFrom/2:propertyClass)},
  verb(Number, Property, Lexicon),
  np(a, Class, Lexicon).

/***** OBJECT ALL VALUES FROM *****/
vp(Number, objectAllValuesFrom(Property,Class), Lexicon) -->
  {traceRule(vp:objectAllValuesFrom/2:propertyClass)},
  verb(Number, Property, Lexicon),
  [only],
  np(a, Class, Lexicon).

/***** OBJECT HAS VALUE *****/
vp(Number, objectHasValue(Property,Individual), Lexicon) -->
  {traceRule(vp:objectHasValue/2:propertyIndividual)},
  verb(Number, Property, Lexicon),
  name(Individual, Lexicon).

/***** OBJECT EXACT CARDINALITY *****/
vp(Number, objectExactCardinality(Integer,Property,Class), Lexicon) -->
  {traceRule(vp:objectExactCardinality/2:integerPropertyClass)},
  verb(Number, Property, Lexicon),
  np(exactly(Integer), Class, Lexicon).

/***** OBJECT MIN CARDINALITY *****/
vp(Number, objectMinCardinality(Integer,Property,Class), Lexicon) -->
  {traceRule(vp:objectMinCardinality/2:integerPropertyClass)},
  verb(Number, Property, Lexicon),
  np(min(Integer), Class, Lexicon).

/***** OBJECT MAX CARDINALITY *****/
vp(Number, objectMaxCardinality(Integer,Property,Class), Lexicon) -->
  {traceRule(vp:objectMaxCardinality/2:integerPropertyClass)},
  verb(Number, Property, Lexicon),
  np(max(Integer), Class, Lexicon).

/***** OBJECT COMPLEMENT OF *****/
vp(singular, objectComplementOf(Class), Lexicon) -->
  {traceRule(vp:objectComplementOf/1:class)},
  [is], [not], np(a, Class, Lexicon).

vp(plural, objectComplementOf(Class), Lexicon) -->
  {traceRule(vp:objectComplementOf/1:pluralclass)},
  [are], [not], np(plural, Class, Lexicon).

/***** OBJECT ONE OF *****/
vp(singular, objectOneOf(Individual), Lexicon) -->
  {traceRule(vp:objectOneOf/1:class)},
  [is], name(Individual, Lexicon).

/***** DATA INTERSECTION OF *****/

% Two arguments
vp(Number, dataIntersectionOf(Datatype1, Datatype2), Lexicon) -->
  {traceRule(vp:dataIntersectionOf/2:datatypeDatatype)},
  vp(Number, Datatype1, Lexicon),
  [','], [and], 
  vp(Number, Datatype2, Lexicon).

% More than two arguments
vp(Number, Term, Lexicon) -->
  {Term =.. [dataIntersectionOf,Datatype1,Datatype2,Datatype3|Rest]},
  {NextTerm =.. [dataIntersectionOf,Datatype2,Datatype3|Rest]},
  {traceRule(vp:dataIntersectionOf/3:datatypeDatatypeRest)},
  vp(Number, Datatype1, Lexicon),
  [','],  
  vp(Number, NextTerm, Lexicon).

/***** DATA UNION OF *****/

% Two arguments
vp(Number, dataUnionOf(Datatype1, Datatype2), Lexicon) -->
  {traceRule(vp:dataUnionOf/2:datatypeDatatype)},
  vp(Number, Datatype1, Lexicon),
  [','], [and], 
  vp(Number, Datatype2, Lexicon).

% More than two arguments
vp(Number, Term, Lexicon) -->
  {Term =.. [dataUnionOf,Datatype1,Datatype2,Datatype3|Rest]},
  {NextTerm =.. [dataUnionOf,Datatype2,Datatype3|Rest]},
  {traceRule(vp:dataUnionOf/3:datatypeDatatypeRest)},
  vp(Number, Datatype1, Lexicon),
  [','],  
  vp(Number, NextTerm, Lexicon).

/***** DATA EXACT CARDINALITY *****/
vp(Number, dataExactCardinality(Integer,Property,Datatype), Lexicon) -->
  {traceRule(vp:dataExactCardinality/2:integerPropertyDatatype)},
  verb(Number, Property, Lexicon),
  np(exactly(Integer), Datatype, Lexicon).

/***** DATA MIN CARDINALITY *****/
vp(Number, dataMinCardinality(Integer,Property,Datatype), Lexicon) -->
  {traceRule(vp:dataMinCardinality/2:integerPropertyDatatype)},
  verb(Number, Property, Lexicon),
  np(min(Integer), Datatype, Lexicon).

/***** DATA MAX CARDINALITY *****/
vp(Number, dataMaxCardinality(Integer,Property,Datatype), Lexicon) -->
  {traceRule(vp:dataMaxCardinality/2:integerPropertyDatatype)},
  verb(Number, Property, Lexicon),
  np(max(Integer), Datatype, Lexicon).

/***** DATA SOME VALUES FROM *****/
vp(singular, dataSomeValuesFrom(Property,Datatype), Lexicon) -->
  {traceRule(vp:dataSomeValuesFrom/2:propertyDatatype)},
  verb(singular, Property, Lexicon),
  np(a, Datatype, Lexicon).

/***** DATA ALL VALUES FROM *****/
vp(singular, dataAllValuesFrom(Property,Datatype), Lexicon) -->
  {traceRule(vp:dataAllValuesFrom/2:propertyDatatype)},
  verb(singular, Property, Lexicon),
  [only],
  np(a, Datatype, Lexicon).

/***** DATA HAS VALUE *****/
vp(singular, dataHasValue(Property,Individual), Lexicon) -->
  {traceRule(vp:dataHasValue/2:propertyIndividual)},
  verb(singular, Property, Lexicon),
  name(Individual, Lexicon).

/***** DATA COMPLEMENT OF *****/
vp(singular, dataComplementOf(Datatype), Lexicon) -->
  {traceRule(vp:dataComplementOf/1:datatype)},
  [is], [not], np(a, Datatype, Lexicon).

/***** DATA ONE OF *****/
vp(singular,dataOneOf(Literal), Lexicon) -->
  {traceRule(vp:dataOneOf/1:class)},
  [is], name(Literal, Lexicon).

% Avoid infinite loop due to VPs containing NPs containing VPs ...
% e.g. something that is something that is something ...
vp(singular, Class, Lexicon) -->
  {Class =.. [Functor|_Arguments]},
  {\+ classConstructor(Functor)},
  {traceRule(vp:other=class-singular)},
  [is], np(a, Class, Lexicon).

vp(plural, Class, Lexicon) -->
  {Class =.. [Functor|_Arguments]},
  {\+ classConstructor(Functor)},
  {traceRule(vp:other=class-plural)},
  [are], np(plural, Class, Lexicon).

det(a, singular, Class, Lexicon) -->
  {traceRule(det:a:class)},
  {lex(Lexicon, Class, noun, Noun, _), article(Noun, Article)}, [Article].

det(a, singular, [Class], Lexicon) -->
  {traceRule(det:a:classSingleElementList)},
  {lex(Lexicon, Class, noun, Noun, _), article(Noun, Article)}, [Article].

det(every, singular, _Class, _Lexicon) --> 
  {traceRule(det:every:class)},
  [every].

det(no, singular, _Class, _Lexicon) --> 
  {traceRule(det:no)},
  [no].

det(exactly(N), Number, _Class, _Lexicon) -->
  {number(N, Number, Word)},
  {traceRule(det:exactly)},
  [exactly], [Word].

det(min(N), Number, _Class, _Lexicon) --> 
  {number(N, Number, Word)},
  {traceRule(det:atLeast)},
  [at], [least], [Word].

det(max(N), Number, _Class, _Lexicon) --> 
  {number(N, Number, Word)},
  {traceRule(det:atMost)},
  [at], [most], [Word].

% Bare singular and plural
det(Number, Number, _Class, _Lexicon) -->
  {memberchk(Number, [singular, plural])},
  {traceRule(det:bare)}, [].

name(namedIndividual(I), Lexicon) -->
  {traceRule(name:individual)},
  {lex(Lexicon, namedIndividual(I), name, Name, _)}, 
  {addTag(I, Name, TName)}, [TName].

name(Individual, Lexicon) -->
  {traceRule(name:individual)},
  {lex(Lexicon, Individual, name, Name, _)}, 
  [Name].

noun(singular, class(C), Lexicon) -->
  {traceRule(noun:class)},
  {lex(Lexicon, class(C), noun, Noun, _)}, 
  {addTag(C, Noun, TNoun)}, [TNoun].

noun(plural, class(C), Lexicon) -->
  {traceRule(noun:plural:class)},
  {lex(Lexicon, class(C), noun, _, PluralNoun)},
  {addTag(C,PluralNoun,TPluralNoun)}, [TPluralNoun].

noun(singular, DataType, Lexicon) -->
  {traceRule(noun:nonClass)},
  {lex(Lexicon, DataType, noun, Noun, _)}, 
  [Noun].

noun(plural, DataType, Lexicon) -->
  {traceRule(noun:plural:nonClass)},
  {lex(Lexicon, DataType, noun, _, PluralNoun)},
  [PluralNoun].

verb(singular, Property, Lexicon) -->
  {traceRule(verb:property)},
  {lex(Lexicon, Property, verb, Verb, _), Property =.. [_, P] }, 
  {addTag(P, Verb, TVerb)}, [TVerb].

verb(plural, Property, Lexicon) -->
  {traceRule(verb:property)},
  {lex(Lexicon, Property, verb, _, Verb), Property =.. [_, P] }, 
  {addTag(P, Verb, TVerb)}, [TVerb].


verbList(Number, [Property1, Property2, numberOfElements(N)], Lexicon) -->
  {traceRule(verb:property:list)},
  ['['], verb(Number, Property1, Lexicon), [']'],
%  [','],
  [and],
  ['['], verb(Number, Property2, Lexicon), [']'], [','],
  truncatedListPhrase(N).

verbList(Number, [Property1, Property2], Lexicon) -->
  {traceRule(verb:property:list)},
  ['['], verb(Number, Property1, Lexicon), [']'],
%  [','],
  [and],
  ['['], verb(Number, Property2, Lexicon), [']'].

verbList(Number, [Property1, Property2, Property3|Rest], Lexicon) -->
  {traceRule(verb:property:list)},
  ['['], verb(Number, Property1, Lexicon), [']'],
  [','], 
  verbList(Number, [Property2, Property3|Rest], Lexicon).


truncatedListPhrase(N) -->
  {atom_concat('and so on (', N, LeftPart)},
  [LeftPart], ['items)'].  

article(X, an) :- name(X, [V|_]), name('aeiouAEIOU', Vowels), member(V, Vowels), !.
article(_, a).


addTag(Link, Text, TagText) :-
  atom_concat('<entity iri=\"', Link, Part1),
  atom_concat(Part1, '\">', Part2),
  atom_concat(Part2, Text, Part3),
  atom_concat(Part3, '</entity>', TagText).


number('1', singular, one) :- !.
number('2', plural, two) :- !.
number('3', plural, three) :- !.
number('4', plural, four) :- !.
number('5', plural, five) :- !.
number('6', plural, six) :- !.
number('7', plural, seven) :- !.
number('8', plural, eight) :- !.
number('9', plural, nine) :- !.
number('0', plural, zero) :- !.
number(N, plural, N).

numericalQuantifier(exactly(_)).
numericalQuantifier(min(_)).
numericalQuantifier(max(_)).

% Includes datatype constructors
classConstructor(objectIntersectionOf).
classConstructor(objectUnionOf).
classConstructor(objectSomeValuesFrom).
classConstructor(objectAllValuesFrom).
classConstructor(objectHasValue).
classConstructor(objectExactCardinality).
classConstructor(objectMinCardinality).
classConstructor(objectMaxCardinality).
classConstructor(objectComplementOf).
classConstructor(objectOneOf).
classConstructor(dataIntersectionOf).
classConstructor(dataUnionOf).
classConstructor(dataSomeValuesFrom).
classConstructor(dataAllValuesFrom).
classConstructor(dataHasValue).
classConstructor(dataExactCardinality).
classConstructor(dataMinCardinality).
classConstructor(dataMaxCardinality).
classConstructor(dataComplementOf).
classConstructor(dataOneOf).

lex(Lexicon, Term, SynCat, Phrase, Plural) :-
  member(lex(Term,SynCat,Phrase,Plural), Lexicon), !.

% Tracing rules (comment out to disable).
% traceRule(X) :- nl, write(X), !.
traceRule(_).

makeSentence(List, Sentence) :-
  makePhrase(List, Phrase),
  capitaliseTagged(Phrase, Sentence).

sentenceTag([_], Sentence, _, Sentence) :- !.  % titles
sentenceTag(_, Sentence, TermAtom, TSentence) :-
  atom(Sentence),
  atom_concat('<sentence owlterm=\"', TermAtom, Part1),
  atom_concat(Part1, '\">', Part2),
  atom_concat(Part2, Sentence, Part3),
  atom_concat(Part3, '</sentence>', TSentence).



makePhrase([Word], Word) :- !.

makePhrase(['[',Word|Words], Phrase) :-
  atom_concat('"', Word, NewWord),
  makePhrase([NewWord|Words], Phrase), !.

makePhrase([Word,']'|Words], Phrase) :-
  atom_concat(Word, '"', NewWord),
  makePhrase([NewWord|Words], Phrase), !.

makePhrase([Word,':'|Words], Phrase) :-
  atom_concat(Word, ':', NewWord),
  makePhrase([NewWord|Words], Phrase), !.

makePhrase([Word,','|Words], Phrase) :-
  atom_concat(Word, ',', NewWord),
  makePhrase([NewWord|Words], Phrase), !.

makePhrase([Word|Words], Phrase) :-
  makePhrase(Words, Sen),
  atom_concat(Word, ' ', WordSpace),
  atom_concat(WordSpace, Sen, Phrase).

% Used for de-aggregation

:- if(\+(current_predicate(_, grammar:flatten(_A,_B)))).
grammar:flatten([], []).
grammar:flatten([H|T], Flat) :-
    is_list(H),
    grammar:flatten(T,F),
    append(H, F, Flat).

:- endif.

%flatten([], []).
%flatten([X|Xs], Flat) :- is_list(X), flatten(Xs, FlatXs), append(X, FlatXs, Flat), !.
%flatten([X|Xs], [X|FlatXs]) :- flatten(Xs, FlatXs).

capitaliseTagged(Sent, CapSent) :-
  name(Sent, Chars),
  name('<entity', EChars),
  append(EChars, _, Chars),
  append(First, [62,C|Last], Chars), % 62 = '>'
  atom_codes(Atom, [C|Last]),
  capitalise(Atom, CapAtom),
  name(CapAtom, CapChars),
  append(First, [62|CapChars], NewChars),
  atom_codes(CapSent, NewChars), 
  !.
capitaliseTagged(Sent, CapSent) :-
  capitalise(Sent, CapSent).


capitalise(Word, CapWord) :-
  name(Word, [C|Chars]),
  lowerCase(C),
  NewC is C-32,
  atom_codes(CapWord, [NewC|Chars]), !.

capitalise(Word, Word) :- atom(Word).


lowerCase(C) :- name('abcdefghijklmnopqrstuvwxyz', List), member(C, List).
upperCase(C) :- name('ABCDEFGHIJKLMNOPQRSTUVWXYZ', List), member(C, List).
