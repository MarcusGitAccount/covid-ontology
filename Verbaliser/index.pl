% index.pl Constructs data for ontopedia index

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

:- module(index, [index/1]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2,saveList/2]).
:- use_module(library(system)).
:- use_module(library(sgml)).
:- use_module(config). 

:- consult(compat).

% Module code

index(FileName) :-
    atom_concat(FileName,'DefinitionsText.xml', InputFileName),
    atom_concat(FileName,'Lexicon.pl', LexFileName),
    atom_concat(FileName, 'Index.pl', OutputFileName),
    ontologyDirectory(Directory),
    atom_concat(Directory, '/', DirectorySlash),
    atom_concat(DirectorySlash, OutputFileName, OutputFile),
    atom_concat(DirectorySlash, InputFileName, InputFile),
    atom_concat(DirectorySlash, LexFileName, LexFile),
    loadList(LexFile, Lexicon),
    load_structure(InputFile, List, [dialect(xml),space(remove)]),
    List = [_A|_],
%    nl, writeq(A),
    memberchk(element(swatontology,_,Descriptions), List),
    composeIndex(Descriptions, Lexicon, Index),
    findWordEntries(Lexicon, WordEntries),
    append(Index, WordEntries, Output),
    saveList(OutputFile, Output).

composeIndex([], _, []).
composeIndex([D|Ds], Lexicon, [I|Is]) :- composeEntry(D, Lexicon, I), composeIndex(Ds, Lexicon, Is).

composeEntry(Description, Lexicon, Entry) :-
  Description = element(description, [iri=IRI], Body),
  composeSentence(Body, Sentence),
  consultLexicon(Lexicon, IRI, Type, Phrase),
  Meaning =.. [Type,IRI],
  Entry = entry(Meaning, Phrase, Sentence).

composeSentence(Body, Atom) :-
  Body = [_Title,Text],
  Text = element(text, _, [SubGroup|_]),
  SubGroup = element(subgroup, _, [Sentence|_]),
  Sentence = element(sentence, _, SentenceList),
  cleanSentence(SentenceList, Phrases),
  joinPhrases(Phrases, Atom), !.

composeSentence(_, 'No text available').

consultLexicon(Lexicon, IRI, class, Phrase) :-
  memberchk(lex(class(IRI),_,Phrase,_), Lexicon), !.

consultLexicon(Lexicon, IRI, namedIndividual, Phrase) :-
  memberchk(lex(namedIndividual(IRI),_,Phrase,_), Lexicon), !.

consultLexicon(Lexicon, IRI, objectProperty, Phrase) :-
  memberchk(lex(objectProperty(IRI),_,Phrase,_), Lexicon), !.

consultLexicon(Lexicon, IRI, dataProperty, Phrase) :-
  memberchk(lex(dataProperty(IRI),_,Phrase,_), Lexicon), !.

consultLexicon(_, _IRI, other, undefined).

% Take out the XML tags

cleanSentence([], []).
cleanSentence([D|Ds], [C|Cs]) :- cleanPhrase(D, C), cleanSentence(Ds, Cs).

cleanPhrase(element(entity,_,[Phrase]), Phrase) :- !.
cleanPhrase(Phrase, Phrase).

joinPhrases([], '').
joinPhrases([P|Ps], A) :- joinPhrases(Ps, ARest), joinAtoms(P, ARest, A).

joinAtoms(A1, A2, A) :-
  separator(A1, A2, Sep),
  atomic_list_concat([A1, Sep, A2], A).

% No space if first constituent ends in quotes
% No space if second constituent begins with a comma or full stop or quotes
separator(A1, _A2, '') :- name(A1, L), append(_, [34], L), !.
separator(_A1, A2, '') :- name(A2, [C|_]), memberchk(C, [34,44,46]), !.
separator(_, _, ' ').

% Listing words and the lexical entries they belong to

findWordEntries(Lexicon, WordEntries) :-
  findPhrases(Lexicon, Phrases),
  findWords(Phrases, Words),
  findEntries(Words, Phrases, WordEntries).

findPhrases(Lexicon, Phrases) :-
  listPhrases(Lexicon, Unsorted),
  sort(Unsorted, Phrases).

listPhrases([], []).
listPhrases([L|Ls], Ps) :- irrelevant(L), listPhrases(Ls, Ps), !.
listPhrases([L|Ls], [P|Ps]) :- entryWords(L, P), listPhrases(Ls, Ps).

irrelevant(lex(datatype(_),_,_,_)).
irrelevant(lex(literal(_),_,_,_)).
irrelevant(lex(literal(_,_),_,_,_)).

findWords(Phrases, Words) :-
  listWords(Phrases, Unsorted),
  sort(Unsorted, Sorted),
  sift(Sorted, Words).

listWords([], []).
listWords([phrase(_,W1)|Ps], Ws) :- listWords(Ps, W2), append(W1, W2, Ws).

entryWords(lex(Meaning,_,Singular,_), phrase(Meaning, Words)) :-
  atom_codes(Singular, Codes),
  charWords(Codes, Words).

findEntries([], _Ps, []).
findEntries([W|Ws], Ps, [C|Cs]) :- findEntry(W, Ps, C), findEntries(Ws, Ps, Cs).
findEntry(W, Phrases, word(W, Ps)) :- selectPhrase(Phrases, W, Ps).

selectPhrase([], _W, []).
selectPhrase([phrase(M,P)|Ps], W, [M|Ms]) :- memberchk(W, P), selectPhrase(Ps, W, Ms), !.
selectPhrase([_|Ps], W, Ms) :- selectPhrase(Ps, W, Ms).

% Recovering words separated by spaces in a character code list

charWords([], []).

charWords(Chars, [Word|Words]) :-
  nextWord(Chars, WordChars, NewChars),
  atom_codes(Word, WordChars),
  charWords(NewChars, Words).

% Finding next word using spaces as separators
nextWord([], [], []) :- !.
nextWord([C,32|Rest], [C], Rest) :- !.
nextWord([32|Cs], Next, Rest) :- nextWord(Cs, Next, Rest), !.
nextWord([C|Cs], [C|Next], Rest) :- nextWord(Cs, Next, Rest).

% Take out the function words

sift([], []).
sift([W|Ws], Ss) :- functionWord(W), sift(Ws, Ss), !.
sift([W|Ws], [W|Ss]) :- sift(Ws, Ss).

functionWord(Word) :- det(Word).
functionWord(Word) :- aux(Word).
functionWord(Word) :- logic(Word).
functionWord(Word) :- prep(Word).

% DETERMINERS

det(the).
det(a).
det(an).

% AUXILIARIES

aux(is).
aux(are).
aux(was).
aux(were).
aux(will).
aux(be).
aux(must).
aux(has).
aux(have).
aux(had).

% Logic or datatype concepts

% logic(thing).
logic(integer).
logic(and).
logic(or).
logic(not).

% PREPOSITIONS
prep(about).
prep(above).
prep(across).
prep(afore).
prep(after).
prep(against).
prep(along).
prep(alongside).
prep(amid).
prep(among).
prep(amongst).
prep(apropos).
prep(around).
prep(as).
prep(aside).
prep(astride).
prep(at).
prep(athwart).
prep(before).
prep(behind).
prep(below).
prep(beneath).
prep(beside).
prep(between).
prep(beyond).
prep(by).
prep(circa).
prep(down).
prep(during).
prep(for).
prep(from).
prep(in).
prep(into).
prep(of).
prep(on).
prep(onto).
prep(over).
prep(per).
prep(to).
prep(under).
prep(up).
prep(with).
prep(within).


