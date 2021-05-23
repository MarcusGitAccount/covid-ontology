% main.pl Controls application of ontology programs to XML files

% Written by Richard Power and Allan Third
% Copyright (c) 2010 by Open University
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

:- module(readXML, [readXML/1]).

:- use_module(library(lists)).
:- use_module(save, [saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

readXML(FileName) :-
    atom_concat(FileName,'Term.pl',OutputFileName),
    ontologyDirectory(Directory),
    atom_concat(Directory, '/', DirectorySlash),
    atom_concat(DirectorySlash, OutputFileName, OutputFile),
    file_exists(OutputFile),
    write(OutputFile),write(' already exists'),nl,!.

readXML(FileName) :-
    atom_concat(FileName,'.xml', InputFileName),
    atom_concat(FileName, 'Term.pl', OutputFileName),
    sourceDirectory(Source),
    ontologyDirectory(Directory),
    atom_concat(Directory, '/', DirectorySlash),
    atom_concat(Source, '/', SourceSlash),
    atom_concat(DirectorySlash, OutputFileName, OutputFile),
    atom_concat(SourceSlash, InputFileName, InputFile),
    read_xml_file(InputFile,All),
    All=element('Ontology',_,List),
    getTerms(List, UnsortedTerms),
    sort(UnsortedTerms, Terms),
    saveList(OutputFile, Terms).

read_xml_file(FileName, Term) :-
    read_ascii_file(FileName, File),
    xml_parse(File,Document),
    atomify(Document,AtomDocument),
    parse_owl_xml_header(AtomDocument, Term).

% readXML:read_ascii_file('../DLsample/travel/travel.xml',_File),xml:xml_parse(_File,_Document),readXML:atomify(_Document,ADoc),ADoc=xml(Version,A),A=[Ontology, Comment].
%parse_owl_xml_header(Document, Term) :-
%        Document =.. [_XML | Body],
%        Body=[ _Version | Namespace],
%        Namespace=[[namespace(_,_,Term), _Comment]],!.
%parse_owl_xml_header(Document, Term) :-
%        Document = xml(_Version, Body),
%        Body = [Term, _Comment].
parse_owl_xml_header(Document, Term) :-
        Document = xml(_Attributes, Body),
        is_list(Body),
        member(element('Ontology',_,List), Body),!,
        Term=element('Ontology',_,List).
parse_owl_xml_header(Document, Term) :-
        Document = xml(_Attributes, Body),
        is_list(Body),
        member(namespace(_,_,Element), Body),!,
        parse_owl_xml_header(xml([], Element), Term).
parse_owl_xml_header(Document, Term) :-
        Document = xml(_Attributes, Body),
        is_list(Body),!,
        parse_owl_xml_list(Body, Term).
parse_owl_xml_header(Document, Term) :-
        Document = xml(_Attributes, Body),
        Body=namespace(_,_,Element),!,
        parse_owl_xml_header(xml([], Element), Term).
parse_owl_xml_header(Document, Term) :-
        Document = xml(_Attributes, Body),
        Body=element('Ontology',_,_),!,
        Term = Body.
parse_owl_xml_header(Document, Term) :-
        Document = xml(_Attributes, Body),
        Body=element(_,_,List),
        parse_owl_xml_list(List, Term),!.

parse_owl_xml_list([Element], Term) :-
        parse_owl_xml_header(xml([], Element), Term),!.
parse_owl_xml_list([Element | _Tail], Term) :-
        parse_owl_xml_header(xml([], Element), Term),!.
parse_owl_xml_List([_ | Tail], Term) :-
        parse_owl_xml_list(Tail, Term).
        
                                  

read_ascii_file(FileName, List) :-
  open(FileName, read, Stream),
  read_ascii(Stream, List),
  close(Stream). 

read_ascii(Stream, List) :-
  get_code(Stream, Ascii),
  read_ascii(Stream, Ascii, List).

read_ascii(_Stream, -1, []) :- !.
read_ascii(Stream, Ascii, [Ascii|List]) :-
    read_ascii(Stream, List).

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



getTerms([], []).
getTerms([Element|Elements], [T|Ts]) :- transform(Element, T), getTerms(Elements, Ts), !.
getTerms([_|Elements], Ts) :- getTerms(Elements, Ts).

transform(element(Functor,Features,[]), Term) :-
  decapitaliseAll(Functor, NewFunctor),
  transformArgs(Features, FeatureList),
  Term =.. [NewFunctor|FeatureList], !.
 
transform('IRI'=IRI, iri=IRI) :- !. 
transform(element(Functor,Features,Arguments), Term) :-
  transformArgs(Arguments, ArgList), 
  transformArgs(Features, FeatureList),
  append(FeatureList, ArgList, List),
  decapitaliseAll(Functor, NewFunctor),
  Term =.. [NewFunctor|List].
 
transformArgs([], []).
transformArgs([A|As], [T|Ts]) :- transformArg(A, T), transformArgs(As, Ts).
  
transformArg('IRI'=IRI, iri=IRI) :- !. 
transformArg(pcdata(Literal), Literal) :- !. 
transformArg(Arg, Term) :- Arg = element(_,_,_), transform(Arg, Term), !. 
transformArg(Arg, Arg). 


% Convert to lower case
decapitaliseAll(Term, LowerTerm) :-
    atom_codes(Term, [First]),
    name('ABCDEFGHIJKLMNOPQRSTUVWXYZ', Caps),
    member(First, Caps),!,
    NewFirst is First + 32,
    atom_codes(LowerTerm, [NewFirst]).
decapitaliseAll(Term, Term) :-
    atom_codes(Term, [First]),!,
    integer(First),!. 
decapitaliseAll(Term, LowerTerm) :-
    atom_codes(Term, [First | Rest] ),
    name('ABCDEFGHIJKLMNOPQRSTUVWXYZ', Caps),
    member(First, Caps),!,
    NewFirst is First + 32,
    atom_codes(RestTerm, Rest),
    decapitaliseAll(RestTerm, LowerRest),
    atom_codes(LowerRest, LowerRestCodes),
    append([NewFirst], LowerRestCodes, LowerTermCodes),
    atom_codes(LowerTerm, LowerTermCodes).     
decapitaliseAll(Term, LowerTerm) :-
    atom_codes(Term, [First | Rest]),
    atom_codes(RestTerm, Rest),
    decapitaliseAll(RestTerm, LowerRest),
    atom_codes(LowerRest, LowerRestCodes),
    append([First], LowerRestCodes, LowerTermCodes),
    atom_codes(LowerTerm, LowerTermCodes).
