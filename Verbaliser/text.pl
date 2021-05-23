% text.pl Generate a sentence for each axiom in Prolog-form ontology 

% Written by Richard Power
% Modified by Sandra Williams (added punctuate and writeHeader)
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

:- module(text, [text/1, text/2]).

:- use_module(library(lists)).
:- use_module(grammar, [generate/3]).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

text(FileName) :-
  atom_concat(FileName, 'Text.txt', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

text(FileName) :-
  atom_concat(FileName, 'Select.pl', InputFile1Name),
  atom_concat(FileName, 'Lexicon.pl', InputFile2Name),
 % atom_concat(FileName, 'Text.txt', OutputFileName),
  atom_concat(FileName, 'Text.xml', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFile1Name, InputFile1),
  atom_concat(DirectorySlash, InputFile2Name, InputFile2),
  loadList(InputFile1, Terms),
  loadList(InputFile2, Lexicon),
  generateTexts(Terms, Lexicon, Texts),
  user:utf8_encoding_name(Enc),
  open(OutputFile, write, Stream, [encoding(Enc)]),
  writeHeader(Stream, plain),
  writeTexts(Stream, Texts),
  writeEmptyMsg1(Stream, Texts),
  writeFooter2(Stream),
  close(Stream), !.

text(FileName, 'aggregated') :-
  atom_concat(FileName, 'AggregateLists.pl', InputFile1Name),
  atom_concat(FileName, 'Lexicon.pl', InputFile2Name),
  atom_concat(FileName, 'AggregatedText.xml', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFile1Name, InputFile1),
  atom_concat(DirectorySlash, InputFile2Name, InputFile2),
  loadList(InputFile1, Terms),
  loadList(InputFile2, Lexicon),
  generateTexts(Terms, Lexicon, Texts),
  user:utf8_encoding_name(Enc),
  open(OutputFile, write, Stream, [encoding(Enc)]),
  writeHeader(Stream, aggregated),
  writeTexts(Stream, Texts),
  writeEmptyMsg1(Stream, Texts),
  writeFooter2(Stream),
  close(Stream), !.

text(FileName, 'definitions') :-
  atom_concat(FileName, 'Definitions.pl', InputFile1Name),
  atom_concat(FileName, 'Lexicon.pl', InputFile2Name),
  atom_concat(FileName, 'DefinitionsText.xml', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFile1Name, InputFile1),
  atom_concat(DirectorySlash, InputFile2Name, InputFile2),
  loadList(InputFile1, Terms),
  loadList(InputFile2, Lexicon),
  generateTexts(Terms, Lexicon, Texts),
  user:utf8_encoding_name(Enc),
  open(OutputFile, write, Stream, [encoding(Enc)]),
  writeHeader(Stream),
  writeTexts(Stream, Texts),
  writeEmptyMsg2(Stream, Texts),
  writeFooter1(Stream),
  close(Stream), !.

text(FileName, _) :-
  text(FileName).

generateTexts([], _, []).

generateTexts([Term|Terms], Lexicon, [Term|Texts]) :- 
   atom(Term),
   generateTexts(Terms, Lexicon, Texts).

generateTexts([Term|Terms], Lexicon, [Text|Texts]) :-
  generate(Term, Lexicon, Text),
  generateTexts(Terms, Lexicon, Texts).

% writeHeader/1
writeHeader(Stream) :-
  write(Stream,'<?xml version=\"1.0\" encoding=\"UTF-8\"?>'),
%  write(Stream,'\n<?xml-stylesheet type=\"text/xsl\" href=\"SWATstylesheet.xsl\"?>'),
  write(Stream,'\n<?xml-stylesheet type=\"text/xsl\" href=\"'),
  xslStylesheet(plain, Stylesheet),
  write(Stream, Stylesheet),
  write(Stream, '\"?>'),
  xmlDTD(DTD),
  write(Stream,'\n<!DOCTYPE swatontology SYSTEM \"'),
  write(Stream, DTD),
  write(Stream, '\">'),
  write(Stream,'\n<swatontology>').

% writeHeader/2
writeHeader(Stream, Type) :-
  writeHeader(Stream),
  write(Stream,'\n<verbalisation type=\"'), 
  write(Stream, Type),
  write(Stream, '\">').

writeFooter1(Stream) :-
  write(Stream, '\n</swatontology>').

writeFooter2(Stream) :-
  write(Stream, '\n</verbalisation>'),
  write(Stream, '\n</swatontology>').


writeTexts(_, []).

writeTexts(Stream, [T|Ts]) :-
  nl(Stream),
  sentence(T, S),
  write(Stream, S),
  writeTexts(Stream, Ts).


writeEmptyMsg1(Stream, []) :-
  write(Stream, '\n<sentence>This ontology contains no logical axioms.</sentence>'), !.

writeEmptyMsg1(_, _).


writeEmptyMsg2(Stream, []) :-
  write(Stream, '\n<description iri=\"\">\n<text>\n<title type=\"no axioms\">Empty</title>\n<subgroup id=\"no axioms\">'),
  write(Stream, '\n<sentence>This ontology contains no logical axioms.</sentence>'), 
  write(Stream, '</subgroup>\n</text>\n</description>'), !.

writeEmptyMsg2(_, _).


sentence(S, Sent) :-
 atom(S),
 atom_chars(S, CharList),
 append(SentChars, [Ch,<,/,s,e,n,t,e,n,c,e,>], CharList), 
 punctuate(Ch, P),
 append(SentChars, P, Left),
 append(Left, [<,/,s,e,n,t,e,n,c,e,>], NewCharList), 
 atom_chars(Sent, NewCharList), !.
sentence(S, S).

punctuate(?, [?]) :- !. 
punctuate(!, [!]) :- !. 
punctuate(., [.]) :- !. 
punctuate(#, [#]) :- !. 
punctuate(:, [:]) :- !. 
punctuate(Ch, [Ch, .]).


