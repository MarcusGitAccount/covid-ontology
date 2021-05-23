% main.pl Controls application of ontology programs to XML files

% Written by Richard Power
% Modified by Sandra Williams
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

:- module(main, [main/0, main/1, getNames/1, onto/0, onto/1]).

:- use_module(library(lists)).

:- use_module(readXML, [readXML/1]).
:- use_module(standard, [standard/1]).
:- use_module(pattern, [pattern/1]).
:- use_module(functor, [functor/1]).
:- use_module(label, [label/1]).
:- use_module(identifier, [identifier/1]).
:- use_module(lexicon, [lexicon/1]).
:- use_module(select, [select/1]).
:- use_module(text, [text/1, text/2]).
:- use_module(library(system)).
:- use_module(library(lists)).
:- use_module(config). 
:- consult(compat).

% For ontopedia
:- use_module(index, [index/1]).
:- use_module(ontopedia, [ontopedia/1]).
:- use_module(html, [html/0]).

% Module code

% Added by Sandra
:- use_module(patternlist, [patternlist/1]).
:- use_module(aggregate, [aggregate/1]).
:- use_module(definition, [definition/1]).
:- use_module(contentWords, [contentWords/2]).

main :-
  getNames(Names),
  mainList(Names).

% Only ones ending in .xml
getNames(Names) :-
  sourceDirectory(Directory),
  directory_files(Directory, Files),
  include(testXMLfile, Files, XMLNames),
  maplist(pruneSuffix, XMLNames, Unsorted),
  sort(Unsorted, Names).

testXMLfile(Name) :- atom_concat(_, '.xml', Name).
pruneSuffix(Name, Pruned) :- atom_concat(Pruned, '.xml', Name).

% Create an ontopedia from all files in the working directory
% Assumes we have verbalised them all to obtain definition reports

onto :-
  getNames(Names),
  onto(Names).

onto(Names) :-
  maplist(index, Names),
  ontopedia(Names),
  html.
  
% Original predicates 

standardise(FileName):-
  nl, write(FileName), nl,
  readXML(FileName), !,
  standard(FileName),  !.

lexicalise(FileName):-
  standardise(FileName),
  logString('standardise succeeded.'),
  label(FileName), !,
  logString('label succeeded.'),
  select(FileName), !,
  logString('select succeded.'),
  identifier(FileName), !,
  logString('identifier succeeded.'),
  lexicon(FileName), 
  logString('lexicon succeeded.'),
  !.

verbalise(FileName):-
  lexicalise(FileName), !,
  logString('lexicalise succeeded.'),
  aggregates(FileName), !,
  logString('aggregates succeeded.'),
  text(FileName),
  logString('text succeeded.'),
  !.

patterns(FileName):-
  lexicalise(FileName), !,
  pattern(FileName), !.


%%%%%%%%% The following predicates were added by Sandra

aggregates(FileName):-
  patterns(FileName), !,
  logString('patterns succeeded.'),
  patternlist(FileName),  !,
  logString('patternList succeeded.'),
  aggregate(FileName),  !,
  logString('aggregate succeeded.'),
  text(FileName, 'aggregated'), !.

define(FileName):-
  verbalise(FileName), !,
  logString('Verbalise succeeded'),
  definition(FileName),  !,
  logString('Definition succeeded'),
  text(FileName, 'definitions'), !.

define(_FileName) :-
  logString('Define failed.'),!.

countContentWordsVerbalised(FileName):-
  verbalise(FileName), !,
  contentWords(FileName, 'Text'), !.

countContentWordsAggregated(FileName):-
  aggregates(FileName), !,
  contentWords(FileName, 'Aggregated'), !.

countContentWordsDefinitions(FileName):-
  define(FileName), !,
  contentWords(FileName, 'Definitions'), !.

mainList([]).
mainList([N|Ns]) :- main(N), !, mainList(Ns).
mainList([N|Ns]) :- nl,write(N),write(' failed for some reason.'),nl,mainList(Ns).

main(Name) :- define(Name), !.

startLogging(Name) :-
        testing(true),
        logfile(Log),!,
        open(Log, append, LogStream),
        assert(logprefix(Name)),
        assert(logstream(LogStream)).
startLogging(_Name) :-
        true.

stopLogging :-
        testing(true),!,
        logstream(LogStream),
        close(LogStream).
stopLogging :-
        true.

logString(String) :-
        testing(true),!,
        logstream(LogStream),
        logprefix(Name),
        write(LogStream, Name),
        write(LogStream, ': '),
        write(LogStream, String),
        nl(LogStream).

logString(_) :-
        true.

atom_concat([], '').
atom_concat([A|As], Atom) :- atom_concat(As, Rest), atom_concat(A, Rest, Atom).

addStylesheets(Name) :-
        addStylesheets(Name, "Text.xml"),
        addStylesheets(Name, "AggregatedText.xml"),
        addStylesheets(Name, "DefinitionsText.xml").

addStylesheets(Name, Ending) :-
        config:xslStylesheet(plain, XSL),
        config:xslStylesheet(html, HTMLXSL),
        atom_codes(Name, NameS),
        append(NameS, "HTML", NameSHTML),
        append(NameSHTML, Ending, HTMLFilename),
        append(NameS, Ending, Filename),
        config:ontologyDirectory(Directory),
        atom_codes(Directory, DirectoryS),
        append(DirectoryS, "/", DirectorySlash),
        append(DirectorySlash, Filename, Path),
        append(DirectorySlash, HTMLFilename, HTMLPath),
        atom_codes(HTMLPathA, HTMLPath),
        atom_codes(PathA, Path),
        annotate:loadXML(PathA, Document),
        Document = xml( HeaderAttrs, [instructions( 'xml-stylesheet', _Instructions) | Body ]),
        NewInstructionsPrefix = "type=\"text/xsl\" href=\"",
        append(NewInstructionsPrefix, XSL, NewInstructionsUnquoted),
        append(NewInstructionsUnquoted, "\"", NewInstructions),
        append(NewInstructionsPrefix, HTMLXSL, NewHTMLInstructionsUnquoted),
        append(NewHTMLInstructionsUnquoted, "\"", NewHTMLInstructions),
        NewDocument = xml(HeaderAttrs, [instructions( 'xml-stylesheet', NewInstructions) | Body]),
        NewHTMLDocument = xml(HeaderAttrs, [instructions( 'xml-stylesheet', NewHTMLInstructions) | Body]),
        xml:xml_parse(NewHTMLXML, NewHTMLDocument),
        xml:xml_parse(NewXML, NewDocument),
        annotate:saveXML(HTMLPathA, NewHTMLXML),
        annotate:saveXML(PathA, NewXML).
