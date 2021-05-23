% Copyright (c) by Open University
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

:- module(annotate, [annotateOWL/1, loadXML/2, saveXML/2]).

:- use_module(library(xml)).
:- use_module(library(sets)).
:- use_module(library(lists)).
:- use_module(config).
:- consult(compat).

annotateOWL(FileName) :-
    atom_concat(FileName,'Annotated.xml',OutputFile),
    ontologyDirectory(Directory),
    atom_concat(Directory, '/', DirectorySlash),
    atom_concat(DirectorySlash, FileName, OutputFile),
    file_exists(OutputFile),
    write(OutputFile),write(' already exists'),nl,!.

annotateOWL(FileName) :-
    atom_concat(FileName,'DefinitionsText.xml', InputFile1Name),
    atom_concat(FileName, '.xml', InputFile2Name),
    atom_concat(FileName, 'Annotated.xml', OutputFileName),
    ontologyDirectory(Directory),
    atom_concat(Directory, '/', DirectorySlash),
    atom_concat(DirectorySlash, OutputFileName, OutputFile),
    atom_concat(DirectorySlash, InputFile1Name, InputFile1),
    atom_concat(DirectorySlash, InputFile2Name, InputFile2),
    annotateMain(InputFile1, InputFile2, OutputFile).

annotateMain(SWATInput, OWLInput, Output) :-
        loadXML(SWATInput, SWATDocument),
        loadXML(OWLInput, OWLDocument),
        xml_pp(OWLDocument),
        findall(Declaration, xml_subterm(OWLDocument, element('Declaration', _, Declaration)), Declarations),
        processDeclarations(Declarations,PLDeclarations),
        checkIndividual(OWLDocument, SWATDocument, PLDeclarations, NewPLDeclarations),
        createAnnotations(OWLDocument, SWATDocument, NewPLDeclarations, Annotations),
        DeclareLabel = element( 'Declaration', [], [
                                element( 'AnnotationProperty',
                                        [abbreviatedIRI="SWATDescription"],
                                        [] )
                                ] ),
        OWLDocument = xml( Version, [namespace(NS, String, element('Ontology', XMLNS, Contents) ), Comment]),
        append(Annotations, DeclareLabel, Additions),
        %atomifyList(Additions, AdditionsFlat),
        append(Contents, Additions, NewContents),
        NewDocument = xml( Version, [namespace(NS, String, element('Ontology', XMLNS, NewContents) ), Comment]),
        %atomify(NewDocumentString, NewDocument),
        xml_parse(NewXML, NewDocument),
        %xml_pp(NewDocument),
        saveXML(Output, NewXML).

createAnnotations(_OWLDocument, _SWATDocument, [], []) :- !.
createAnnotations(OWLDocument, Document, [Declaration | Declarations], [AnnotationElement | Annotations]) :-
        Declaration =.. [Type, IRI],
        fixIRI(OWLDocument, IRI, PlainIRI),
        append("#", PlainIRI, HashIRI),
        ((xml_subterm(Document, element( description, [iri=IRI], [ element(title, [type=TypeString], _), TextElement ])),StoredIRI=IRI);
         (xml_subterm(Document, element( description, [iri=HashIRI], [ element(title, [type=TypeString], _), TextElement ])),StoredIRI=HashIRI)),
        member(StoredIRI, [IRI, PlainIRI, HashIRI]),
        matchType(Type, TypeString),
        %atom_codes(TypeStringA, TypeString),!,
        %write('Type matched to '),write(TypeStringA),nl,!,
        TextElement = element( text, _, Subgroups),
        flattenSubgroups(Subgroups, Descriptions),
        %atom_codes(DescriptionsA, Descriptions),!,
        %write('Descriptions generated'), write(DescriptionsA),nl,!,
        %append("#", PlainIRI, IRI),!,
        AnnotationElement = element( 'AnnotationAssertion', [], [ element( 'AnnotationProperty', [abbreviatedIRI="SWATDescription"],[] ),
                                element( 'AbbreviatedIRI', [], [ pcdata(PlainIRI) ] ),
                                element( 'Literal', [],[pcdata(Descriptions) ] ) ]),
        createAnnotations(OWLDocument, Document, Declarations, Annotations).
createAnnotations(OWLDocument, Document, [_Declaration | Declarations], Annotations) :-
        createAnnotations(OWLDocument, Document, Declarations, Annotations), !.

fixIRI(_Document, IRI, PlainIRI) :-
        append("#", PlainIRI, IRI), !.
fixIRI(_Document, IRI, PlainIRI) :-
        append("http", URL, IRI),
        append("#", PlainIRI, Ending),
        append(_Prefix, Ending, URL).
%        append(URL, "#", FullPrefix),
%        append(FullPrefix, PlainIRI, IRI),!.
fixIRI(Document, IRI, PlainIRI) :-
       findall(Prefix, (xml_subterm(Document, element( 'Prefix', Attributes, _)),member(name=Prefix, Attributes)), Prefices),
       append(CurrentPrefixColon, PlainIRI, IRI),
       append(CurrentPrefix, ":", CurrentPrefixColon),!,
       member(CurrentPrefix, Prefices).
                   
        

checkIndividual(OWLDocument, SWATDocument, PLDeclarations, NewPLDeclarations) :-
        findall(IndividualIRI, xml_subterm(SWATDocument, element( description, [iri=IndividualIRI], [element(title, [type="individual"], _), _])), IndividualIRIs),
        list_to_set(IndividualIRIs, IRISet),
        individualOccursInOntology(OWLDocument, IRISet, OccurringIRISet),
        individualIRIToPLDeclaration(OccurringIRISet, IndividualDeclarations),
        append(PLDeclarations, IndividualDeclarations, NewDeclarations),
        list_to_set(NewDeclarations, NewPLDeclarations).

individualOccursInOntology(_OWLDocument, [], []).
individualOccursInOntology(OWLDocument, [CurrentIRI | IRISet], [CurrentIRI | Rest]) :-
        xml_subterm(OWLDocument, element(NamedIndividual, [IRITag=CurrentIRI], [])),
        isNamedIndividualTag(NamedIndividual),
        isIRITag(IRITag),
%        findall(IRIElement, xml_subterm(OWLDocument, element('NamedIndividual', ['IRI'=CurrentIRIString], []), IRIElement), Elements),
%        \+ Elements = [],!,
        individualOccursInOntology(OWLDocument, IRISet, Rest).
individualOccursInOntology(OWLDocument, [_CurrentIRI | IRISet], Rest) :-
        individualOccursInOntology(OWLDocument, IRISet, Rest).
        
individualIRIToPLDeclaration([], []).
individualIRIToPLDeclaration([IRI | IRIs], [Declaration | Declarations]) :-
        Declaration =.. [individual, IRI],
        individualIRIToPLDeclaration(IRIs, Declarations).

%checkIndividual([], []).
%checkIndividual(Declarations, DeclarationsWithIndividuals) :-
%        findall(IndividualElement, xml_subterm(OWLDocument, element( 'NamedIndividual', ['IRI'="#Kitty"],[] )
%checkIndividual([], []).
%checkIndividual([Declaration | Declarations], [NewDeclaration | NewDeclarations]) :-
%        Declaration =.. [individual, IRI],!,
%        nl,
%        write("%%%"),
%        write(IRI),
%        checkIndividual(Declarations, NewDeclarations).
%checkIndividual([_Declaration | Declarations]) :-
%        checkIndividual(Declarations).
        

flattenSubgroups([], []).
flattenSubgroups([element( subgroup, [id=Heading], Sentences) | Subgroups], Description) :-
        flattenSentences(Sentences, DescSentences),
        append(Heading, ":\n", HeadingNL),
        append(HeadingNL, DescSentences, DescriptionA),
        flattenSubgroups(Subgroups, Descriptions),
        append(DescriptionA, Descriptions, Description).

flattenSentences([], "").
flattenSentences([element(sentence, _, Content) | SentenceElements], Sentences) :-
        flattenContent(Content, Sentence),
        append(Sentence, "\n", SentenceNL),
        flattenSentences(SentenceElements, SentencesList),
        append(SentenceNL, SentencesList, Sentences).

flattenContent([], "").
flattenContent([element(entity, _, [pcdata(Name)]) | Content], NameContent) :-
        flattenContent(Content, Rest),
        append(Name, " ", NameWithSpace),
        append(NameWithSpace, Rest, NameContent).
flattenContent([pcdata(String) | Content], StringContent) :-
        flattenContent(Content, Rest),
        append(String, " ", StringWithSpace),
        append(StringWithSpace, Rest, StringContent).
        
%        
%        element( description,
%                        [iri="#Rover"],
%                        [
%                        element( title,
%                                [type="individual"],
%                                [
%                                pcdata("ROVER")
%                                ] ),
%                        element( text,
%                                [],
%                                [
%                                element( subgroup,
%                                        [id="Typology"],
%                                        [
%                                        element( sentence,
%                                                [axiom_id="6,7"],
%                                                [
%                                                element( entity,
%                                                        [iri="#Rover"],
%                                                        [
%                                                        pcdata("Rover")
%                                                        ] ),
%                                                pcdata(" is a "),
%                                                element( entity,
%                                                        [iri="#Dog"],
%                                                        [
%                                                        pcdata("dog")
%                                                        ] ),
%                                                pcdata(", and a "),
%                                                element( entity,
%                                                        [iri="http://www.w3.org/2002/07/owl#Thing"],
%                                                        [
%                                                        pcdata("thing")
%                                                        ] ),
%                                                pcdata(".\n")
%                                                ] )
%                                        ] ),
%                                element( subgroup,
%                                        [id="Description"],
%                                        [
%                                        element( sentence,
%                                                [axiom_id="8"],
%                                                [
%                                                element( entity,
%                                                        [iri="#Rover"],
%                                                        [
%                                                        pcdata("Rover")
%                                                        ] ),
%                                                element( entity,
%                                                        [iri="#chases"],
%                                                        [
%                                                        pcdata("chases")
%                                                        ] ),
%                                                element( entity,
%                                                        [iri="#Kitty"],
%                                                        [
%                                                        pcdata("Kitty")
%                                                        ] ),
%                                                pcdata(".\n")
%                                                ] )
%                                        ] )
%                                ] )
%                        ] ),

processDeclarations([], []).
processDeclarations([[element(Type, [IRITag=IRI],_)] | Declarations], [PLDeclaration | PLDeclarations]) :-
        isIRITag(IRITag),
        lookupType(Type, PLType),
        PLDeclaration =.. [PLType, IRI],
        processDeclarations(Declarations, PLDeclarations).

saveXML(Filename, Document) :-
        user:utf8_encoding_name(Enc),
        open(Filename, write, Stream, [encoding(Enc)]),
        write_ascii(Stream, Document),
        close(Stream).

loadXML(Filename, Document) :-
        read_ascii_file(Filename, List),
        xml_parse(List, Document).
        
read_ascii_file(FileName, List) :-
        user:utf8_encoding_name(Enc),
        open(FileName, read, Stream, [encoding(Enc)]),
        read_ascii(Stream, List),
        close(Stream). 

read_ascii(Stream, List) :-
  get_code(Stream, Ascii),
  read_ascii(Stream, Ascii, List).

read_ascii(_Stream, -1, []) :- !.
read_ascii(Stream, Ascii, [Ascii|List]) :-
    read_ascii(Stream, List).

write_ascii(_Stream, []) :- !.
write_ascii(Stream, [Ascii | List]) :-
        put_code(Stream, Ascii),
        write_ascii(Stream, List).
                           

% Convert any embedded lists of character codes into atoms
atomify(X, X) :- atom(X),!.
atomify(X, X) :- var(X),!.
atomify(X, Y) :-
    integerList(X),!,
    atom_codes(Y, X).
atomify(X, Y) :-
    X =.. [Functor | Args],
    integerList(Args),!,
    atom_codes(Arg, Args),
    Y =.. [Functor | Arg].
atomify(X, Y) :-
    X =.. [Functor | Args],!,
    atomifyList(Args, AtomArgs),
    Y =.. [Functor | AtomArgs].

atomifyList([],[]).
atomifyList([X], [Y]) :- atomify(X, Y).
atomifyList([X | Tail], [Y | TailAtoms]) :-
    atomify(X, Y),
    atomifyList(Tail, TailAtoms).

integerList([X]) :- integer(X),!.
integerList([X | Tail]) :- integer(X), integerList(Tail).

%[class('#LiteraryWork'),class('#Man'),class('#Novel'),class('#Novelist'),class('#Person'),class('#Poem'),class('#Poet'),class('#ProlificNovelist'),class('#RomanticPoet'),class('#Woman'),class('#Writer'),class('owl:Thing'),objectproperty('#Admires'),objectproperty('#AuthorOf'),objectproperty('#MarriedTo'),dataproperty('#HasBirthDate')]
%[class('#LiteraryWork'),class('#Man'),class('#Novel'),class('#Novelist'),class('#Person'),class('#Poem'),class('#Poet'),class('#ProlificNovelist'),class('#RomanticPoet'),class('#Woman'),class('#Writer'),class('owl:Thing'),objectproperty('#Admires'),objectproperty('#AuthorOf'),objectproperty('#MarriedTo'),dataproperty('#HasBirthDate'),individual('#Adonais'),individual('#Frankenstein'),individual('#MaryShelley'),individual('#PercyShelley')]
lookupType('Class', class).
lookupType('NamedIndividual', individual).
lookupType('ObjectProperty', objectproperty).
lookupType('Datatype', datatype).
lookupType('DataProperty', dataproperty).
lookupType('Literal', literal).

matchType(class, "class").
matchType(class, class).
matchType(individual, individual).
matchType(individual, "individual").
matchType(objectproperty, objectproperty).
matchType(objectproperty, "objectproperty").
matchType(objectproperty, "object property").
matchType(dataproperty, 'object property').
matchType(dataproperty, dataproperty).
matchType(dataproperty, "dataproperty").
matchType(dataproperty, "data property").
matchType(dataproperty, 'data property').
matchType(datatype, datatype).
matchType(datatype, "datatype").
matchType(datatype, "data type").
matchType(datatype, 'data type').
matchType(individual, literal).
matchType(individual, "literal").

isNamedIndividualTag('NamedIndividual').
isNamedIndividualTag('namedIndividual').
isNamedIndividualTag('Namedindividual').
isNamedIndividualTag('namedIndividual').

isIRITag('IRI').
isIRITag('iri').
isIRITag('Iri').
isIRITag('iRI').
isIRITag('abbreviatedIRI').
isIRITag('AbbreviatedIRI').
isIRITag('abbreviatediri').


%argumentsOfAnnotate([class('owl:Thing'),
%                     objectproperty('#drives'),
%                     objectproperty('#eaten_by'),
%                     objectproperty('#eats'),
%                     objectproperty('#has_child'),
%                     objectproperty('#has_father'),
%                     objectproperty('#has_mother'),
%                     objectproperty('#has_parent'),
%                     objectproperty('#has_part'),
%                     objectproperty('#has_pet'),
%                     objectproperty('#is_pet_of'),
%                     objectproperty('#likes'),
%                     objectproperty('#part_of'),
%                     objectproperty('#reads'),
%                     objectproperty('#works_for'),
%                     dataproperty('#service_number'),
%                     individual('#Daily_Mirror'),
%                     individual('#Dewey'),
%                     individual('#Fido'),
%                     individual('#Flossie'),
%                     individual('#Fluffy'),
%                     individual('#Fred'),
%                     individual('#Huey'),
%                     individual('#Joe'),
%                     individual('#Kevin'),
%                     individual('#Louie'),
%                     individual('#Mick'),
%                     individual('#Minnie'),
%                     individual('#Q123_ABC'),
%                     individual('#Rex'),
%                     individual('#The42'),
%                     individual('#The_Guardian'),
%                     individual('#The_Sun'),
%                     individual('#The_Times'),
%                     individual('#Tibbs'),
%                     individual('#Tom'),
%                     individual('#Walt')]).
