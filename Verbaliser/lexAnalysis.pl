%lex(class('http://www.w3.org/2002/07/owl#Thing'), noun, thing, things).
%lex(dataProperty('#service_number'), verb, 'is service number', 'are service numbers').
%lex(datatype('http://www.w3.org/2001/XMLSchema#integer'), noun, integer, integers).
%lex(namedIndividual('#Walt'), name, 'Walt', 'Walt').
%lex(objectProperty('#drives'), verb, drives, drive).
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
% =====================================================================

:- module(lexAnalysis, [lexAnalysis/1]).


:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

lexAnalysis(FileName) :-
  atom_concat(FileName, 'LexAnalysis.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

lexAnalysis(FileName) :-
  atom_concat(FileName, 'Lexicon.pl', InputFileName),
  atom_concat(FileName, 'LexAnalysis.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  loadList(InputFile, Lexicon),
  assertLexicon(Lexicon),
  collateMentions(Lexicon, MentionsList),
  retractLexicon(Lexicon),
  saveList(OutputFile, MentionsList).

assertLexicon([]).
assertLexicon([Entry | Rest]) :-
        assert(Entry),!,
        assertLexicon(Rest).

retractLexicon([]).
retractLexicon([Entry | Rest]) :-
        retract(Entry),!,
        retractLexicon(Rest).

collateMentions([], []).
collateMentions([lex(OWLIdentifier, _POS, Singular, _Plural) | Lexicon], [Mentions | MentionsRest]) :-
        lookup(Singular, ReferringIdentifiers),
        select(OWLIdentifier, ReferringIdentifiers, ReferringIdentifiersWithoutSelf),
        Mentions = term(OWLIdentifier, ReferringIdentifiersWithoutSelf),
        collateMentions(Lexicon, MentionsRest).
collateMentions([lex(_OWL, _POS, _Singular, _Plural) | Lexicon], MentionsRest) :-
        collateMentions(Lexicon, MentionsRest).

lookup(Word, ReferringIdentifiers) :-
        findall(OWLIdentifier, (lex(OWLIdentifier, _POS, _Singular, _Plural),matchSubstring(Word,OWLIdentifier)), ReferringIdentifiers).
                
             
matchSubstring(Word, OWLIdentifier) :-
             lex(OWLIdentifier, _POS, Singular, _Plural),
             atom_codes(Singular, SingularList),
             atom_codes(Word, WordList),!,
             subListOfList(WordList, SingularList).

subListOfList([],[]).
subListOfList(Sub, Super) :-
        append(Prefix, BigTail, Super),
        append(Sub, LittleTail, BigTail),!,
        reverse(Prefix, Reversed),
        excludeWordMiddle(Reversed),
        excludeWordMiddle(LittleTail).

excludeWordMiddle([]).
excludeWordMiddle(Affix) :-
        Affix = [FirstLetter | _Rest],
        wordSeparators(Separators),
        member(FirstLetter, Separators).

wordSeparators(Separators) :- atom_codes(' ,_-#', Separators).
