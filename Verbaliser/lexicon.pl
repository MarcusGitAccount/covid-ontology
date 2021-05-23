% lexicon.pl Given lists of names from an ontology, construct a lexicon 

% Written by Richard Power
% Modified by Sandra Williams (added plural phrases
%  used in some aggregated sentences)
% Substantial revision of plural phrases in Jan 2011.
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

:- module(lexicon, [lexicon/1, getPhrase/5]).


:- use_module(library(lists)).
:- use_module(save, [loadList/2, saveList/2]).
:- use_module(library(system)).

:- use_module('english', [inflection/3]).
:- use_module(config). 
:- consult(compat).

% Module code

lexicon(FileName) :-
  atom_concat(FileName, 'Lexicon.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

lexicon(FileName) :-
  atom_concat(FileName, 'Label.pl', InputFile1Name),
  atom_concat(FileName, 'Identifier.pl', InputFile2Name),
  atom_concat(FileName, 'Lexicon.pl', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFile1Name, InputFile1),
  atom_concat(DirectorySlash, InputFile2Name, InputFile2),
  loadList(InputFile1, Labels),
  loadList(InputFile2, Identifiers),
  getLex(Labels, Identifiers, Lexicon),
  sortLex(Lexicon, SLexicon),
  saveList(OutputFile, SLexicon).


getLex(_, [], []).
getLex(_, [end_of_file],[]).
getLex(_, [], [end_of_file]).


getLex(Labels, [N|Ns], [L|Ls]) :-
  getEntry(Labels, N, L),
  getLex(Labels, Ns, Ls).


/******** sortLex/2  ************
   sortLex(+LexiconList, -SortedLexiconList) */
sortLex(Lexicon, SLexicon) :-
  attachPrefixes(Lexicon,PLex),
  sort(PLex, SPLex),
  removePrefixes(SPLex, SLexicon).


/******** attachPrefixes/2  ************
   attachPrefixes(+LexiconList, -PrefixedLexiconList) */
attachPrefixes([],[]).

attachPrefixes([lex(Id,Cat,Phrase,Plur)|Lexes], [Prefix:lex(Id,Cat,Phrase,Plur)|PLexes]) :-
  name(Phrase, PhraseChars),
  toLowerCase(PhraseChars, PrefixChars),
  name(Prefix, PrefixChars),
  attachPrefixes(Lexes,PLexes).


/******** removePrefixes/2  ************
   removePrefixes(+PrefixedLexiconList, -LexiconList) */
removePrefixes([], []).

removePrefixes([_:Lex|PLexes], [Lex|Lexes]) :-
  removePrefixes(PLexes, Lexes).
  

toLowerCase([],[]).

toLowerCase([Char|Chars], [LChar|LChars]) :-
  name('ABCDEFGHIJKLMNOPQRSTUVWXYZ', List), 
  memberchk(Char, List),
  LChar is Char + 32, !,
  toLowerCase(Chars, LChars).

toLowerCase([Char|Chars], [Char|LChars]) :-
  toLowerCase(Chars, LChars).


getEntry(Labels, Identifier, lex(Identifier, SynCat, Phrase, Plural)) :-
  getName(Identifier, Name, SynCat),
  getLabel(Labels, Name, Label),
  getPhrase(Identifier, Name, Label, SynCat, PhraseTagged, PluralTagged),
  deTag(PhraseTagged, Phrase),
  deTag(PluralTagged, Plural).

% Special case of a literal with no label
getPhrase(Identifier, Name, nolabel, _SynCat, Name, Name) :-
  functor(Identifier, literal, _), !.

getPhrase(_Identifier, Name, Label, SynCat, Phrase, Plural) :-
  getPhrase(Name, Label, SynCat, Phrase, Plural).

% Special case of a number (probably taken care of by literal now)
getPhrase(N, _Label, name, Phrase, Phrase) :-
  number(N), number_codes(N, Chars), atom_codes(Phrase, Chars), !.

% No label, so use the identifier name and assume words are separated by
% capital letters and underscores
getPhrase(Name, nolabel, SynCat, Phrase, Plural) :-
  removeNameSpace(Name, CoreName),
  name(CoreName, Chars),
  listWords(Chars, Words), !,
  reviseEntry(SynCat, Words, NewWords, PlurWords),
  makePhrase(SynCat, NewWords, Phrase),
  makePhrase(SynCat, PlurWords, Plural), !.

% Use the label, assuming that words are separated only by spaces/underlines
getPhrase(_Name, Label, SynCat, Phrase, Plural) :-
  name(Label, Chars),
  labelWords(Chars, Words),
  reviseEntry(SynCat, Words, NewWords, PlurWords),
  makePhrase(SynCat, NewWords, Phrase),
  makePhrase(SynCat, PlurWords, Plural).

getName(namedIndividual(Name), Name, name).
getName(literal(_DataType,Name), Name, name).
getName(literal(_DataType=_IRI), 'Undefined literal', name).
getName(literal(Name), Name, name).
getName(class(Name), Name, noun).
getName(datatype(Name), Name, noun).
getName(objectProperty(Name), Name, verb).
getName(dataProperty(Name), Name, verb).


% If there is no satisfactory label statement, return nolabel
getLabel(Labels, Name, Label) :- member(label(Name,Label), Labels), atom(Label), !.
getLabel(_Labels, _Name, nolabel).


removeNameSpace(Name, NewName) :-
  name(Name, List),
  reverse(List, RevList),
  pruneList(RevList, RevNewList),
  reverse(RevNewList, NewList),
  atom_codes(NewName, NewList), !.

removeNameSpace(Name, Name).


% Stop when you hit # or /

pruneList([], []).
pruneList([C|_List], []) :- member(C, [35, 47, 92]), !.
pruneList([C|List], [C|NewList]) :- pruneList(List, NewList).


% Predicting a word list from characters of an ontology name

listWords([], []).

listWords(Chars, [Word|Words]) :-
  removeSpaces(Chars, NextChars),
  getWord(NextChars, WordChars, NewChars),
  atom_codes(Word, WordChars),
  listWords(NewChars, Words).


% Recovering words separated by spaces or underlines in a character code list

labelWords([], []).

labelWords(Chars, [Word|Words]) :-
  nextWord(Chars, WordChars, NewChars),
  atom_codes(Word, WordChars),
  labelWords(NewChars, Words).


% reviseEntry/4
% We can use various tricks to improve the lexical entry predicted
% from the name of the term

% VERBS

% verb entry already starts with 'is' 
%reviseEntry(verb, [is|Words], [is|Words], [are|Plural]) :- 
%  pluralPhrase(Words,Plural),  
%  !.

% Add "is" for a verb entry which is missing an initial verb
reviseEntry(verb, [W|Words], [is,W|Words], [are|Plural]) :- 
  \+ verbLike(W), 
  pluralPhrase([W|Words],Plural),  
  !.

% Add "as" after "has" if not already present
reviseEntry(verb, [has,W|Words], [has,as,W|Words], [have,as|Plural]) :- 
  \+ W=as, 
  pluralPhrase([W|Words],Plural),  
  !.

% Assume first word is verb, make plural of verb and following phrase 
reviseEntry(verb, [Word|Rest], [Word|Rest], [Pword|Plural]) :- 
  makePluralWord(verb,Word,Pword), 
  pluralPhrase(Rest,Plural),  
  !.


% NAMES

% If name already begins with "the", don't add anything

reviseEntry(name, Words, Words, Words) :- Words = [the|_], !.

% Add "the" in front of a proper name if it contains "of"
reviseEntry(name, Words, [the|Words], [the|Words]) :- 
  member(of, Words), !.

% Add "the" in front of a proper name if it has three or more words
reviseEntry(name, Words, [the|Words], [the|Words]) :- length(Words, L), L>2, !.


% NOUNS

reviseEntry(noun, Words, Words, Plural) :- 
  length(Words,L),
  L > 1,
  pluralPhrase(Words,Plural), 
  !.


% Otherwise make last word plural
reviseEntry(noun, Words, Words, Plural) :- 
  length(Words, N),
  nth1(N, Words, Word, Rest), 
  makePluralWord(noun, Word, Pword), 
  append(Rest, [Pword], Plural), 
  !.
 
reviseEntry(_, Words, Words, Words). 


verbLike(Word) :- member(Word, [is, has]), !.
verbLike(Word) :- atom_concat(_, s, Word).





% irregular plural nouns
makePluralWord(noun,Word,Pword) :-
  pluralNoun(Word, Pword), !.

% otherwise, add s for plural noun
makePluralWord(noun, Word,Pword) :-
  inflection(s, Word, Pword). 

% irregular verbs
makePluralWord(verb,Word,Pword) :-
  pluralVerb(Word, Pword), !.

% remove s to form plural verb
makePluralWord(verb,Word,Pword) :-
  sub_atom(Word, Before, _, 0, s), 
  sub_atom(Word, 0, Before, _, Pword), !. 

% otherwise, return input word
makePluralWord(verb,Word,Word).




% 3rd Person Singular to 3rd Plural or vice versa
pluralVerb(has, have).
pluralVerb(is, are).
pluralVerb(does, do).
pluralVerb(goes, go).
pluralVerb(Word,Plural) :-
   atom_concat(X,ies,Word),  
   atom_concat(X,y,Plural),!.


/********************
 pluralPhrase/2
 pluralPhrase(+Sing,?Plural)
  Converts a singular phrase (list of words) into a plural 
  phrase (list of words). 
  If 'of' or 'in' occurs in the phrase, the word before 
  it is made into the plural form.
  E.g., 
  'dependency of' is converted into 'dependencies of'  
  Checks for prepositions in phrases following verbs,
  e.g. 'is in' so that it doesn't produce 
  'tos' from 'to', 'bies' from 'by', etc. 
*******************/

pluralPhrase(Phrase, PluralP) :- 
  length(Phrase,L),
  L > 1,
  member(W,[of,in]),
  append(Words,[W|Rest],Phrase), %strips 'of' and any words after it (Rest) from Phrase list to give a list of words before 'of' (Words)
  length(Words,N),  
  nth1(N,Words,Word,R),       % strips out last word before 'of' and any words before it in R
  \+ prep(Word),
  \+ atom_concat(_,ed,Word),  
%  reviseEntry(noun, [Word], _, Plural),
makePluralWord(noun, Word,Plural),
  append(R,[Plural],First),
  append(First,[W],Middle),
  append(Middle,Rest,PluralP), 
  !.

pluralPhrase(Phrase, PluralP) :- 
  length(Phrase,N),  
  nth1(N,Phrase,Word,R),     % strips out last word 
   \+ prep(Word),
  \+ atom_concat(_,ed,Word),  
%   reviseEntry(noun, Phrase, Phrase, Plural),
  \+ prep(Word),
  \+ atom_concat(_,ed,Word),  
makePluralWord(noun, Word,Plural),
append(R,[Plural],PluralP),
   !.

pluralPhrase(Phrase,Phrase).


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


removeSpaces([C|Chars], [C|Chars]) :- alphanumeric(C), !.
removeSpaces([_|Chars], NewChars) :- removeSpaces(Chars, NewChars).

alphanumeric(C) :- lowerCase(C).
alphanumeric(C) :- upperCase(C).
alphanumeric(C) :- numerical(C).

lowerCase(C) :- name('abcdefghijklmnopqrstuvwxyz', List), member(C, List).
upperCase(C) :- name('ABCDEFGHIJKLMNOPQRSTUVWXYZ', List), member(C, List).
numerical(C) :- name('0123456789', List), member(C, List).


getWord([C1,C2|Chars], [C1], [C3|Chars]) :-
  lowerCase(C1),
  upperCase(C2),
  uncapitalise(C2, C3), !.

getWord([C1|Chars], [C2|WordChars], NewChars) :-
  alphanumeric(C1),
  uncapitalise(C1, C2),
  getWord(Chars, WordChars, NewChars), !.

getWord([_|Chars], [], Chars).
getWord([], [], []).


% Finding next word using spaces as separators
nextWord([], [], []) :- !.
nextWord([C,32|Rest], [C], Rest) :- !.
nextWord([32|Cs], Next, Rest) :- nextWord(Cs, Next, Rest), !.
nextWord([C,95|Rest], [C], Rest) :- !.
nextWord([95|Cs], Next, Rest) :- nextWord(Cs, Next, Rest), !.
nextWord([C|Cs], [C|Next], Rest) :- nextWord(Cs, Next, Rest).


% Join words into a phrase putting capital letters for unknown words

makePhrase(SynCat, [Word], CapWord) :-
  capWord(SynCat, Word, CapWord), !.

makePhrase(SynCat, [Word|Words], Phrase) :-
  capWord(SynCat, Word, CapWord),
  makePhrase(SynCat, Words, Rest),
  atom_concat(CapWord, ' ', WordSpace),
  atom_concat(WordSpace, Rest, Phrase).


capWord(_, Word, Word) :- member(Word, [of, the, and]), !.
capWord(name, Word, CapWord) :- capitalise(Word, CapWord), !.
capWord(SynCat, Word, Word) :- \+ SynCat=name.


capitalise(Word, CapWord) :-
  name(Word, [C|Chars]),
  lowerCase(C),
  NewC is C-32,
  atom_codes(CapWord, [NewC|Chars]), !.

capitalise(Word, Word) :- atom(Word).

capitalise(Integer, Word) :- integer(Integer), integerAtom(Integer, Word).

% Only for characters

uncapitalise(C1, C2) :- upperCase(C1), C2 is C1+32, !.
uncapitalise(C, C).

integerAtom(Integer, Atom) :-
  number_chars(Integer, Chars),
  atom_chars(Atom, Chars).


deTag([], []) :- !.
deTag(String, Detagged) :- 
        atom(String),!,
        atom_codes(String, StringCodes),
        deTag(StringCodes, DetaggedString),
        atom_codes(Detagged, DetaggedString).
deTag([LT | T], Detagged) :-
        "<" = [LT],!,
        atom_codes('&lt;', LTCode),
        deTag(T, DetaggedTail), !,
        append(LTCode, DetaggedTail, Detagged).
deTag([Amp | T], Detagged) :-
        "&" = [Amp],!,
        atom_codes('&amp;', GTCode),
        deTag(T, DetaggedTail), !,
        append(GTCode, DetaggedTail, Detagged).
deTag([GT | T], Detagged) :-
        ">" = [GT],!,
        atom_codes('&gt;', GTCode),
        deTag(T, DetaggedTail), !,
        append(GTCode, DetaggedTail, Detagged).
deTag([H | T], [H | DetaggedTail]) :-
        deTag(T, DetaggedTail).



pluralNoun(accommodation, accommodation).
pluralNoun(addendum, addenda).
pluralNoun(advice, advice).
pluralNoun(agenda, agenda).
pluralNoun(aircraft, aircraft).
pluralNoun(alga, algae).
pluralNoun(alumna, alumnae).
pluralNoun(alumnus, alumnae).
pluralNoun(analysis, analyses).
pluralNoun(anger, anger).
pluralNoun(antenna, antennae).
pluralNoun(appendix, appendices).
pluralNoun(applause, applause).
pluralNoun(assistance, assistance).
pluralNoun(automaton, automata).
pluralNoun(axis, axes).
pluralNoun(bacterium, bacteria).
pluralNoun(baggage, baggage).
pluralNoun(barracks, barracks).
pluralNoun(beau, beaux).
pluralNoun(beauty, beauty).
pluralNoun(biscotti, biscotti).
pluralNoun(bison, bison).
pluralNoun(bread, bread).
pluralNoun(butter, butter).
pluralNoun(cactus, cacti).
pluralNoun(calf, calves).
pluralNoun(candelabra, candelabra).
pluralNoun(cash, cash).
pluralNoun(chateau, chateaux).
pluralNoun(child, children).
pluralNoun(clothing, clothing).
pluralNoun(consortium, consortia).
pluralNoun(corpus, corpora).
pluralNoun(corrigendum, corrigenda).
pluralNoun(courage, courage).
pluralNoun(crisis, crises).
pluralNoun(criterion, criteria).
pluralNoun(cunning, cunning).
pluralNoun(damage, damage).
pluralNoun(data, data).
pluralNoun(datum, data).
pluralNoun(deceit, deceit).
pluralNoun(deer, deer).
pluralNoun(echo, echoes).
pluralNoun(education, education).
pluralNoun(elf, elves).
pluralNoun(emphasis, emphases).
pluralNoun(evidence, evidence).
pluralNoun(fish, fish).
pluralNoun(focus, foci).
pluralNoun(foot, feet).
pluralNoun(formula, formulae).
pluralNoun(forum, fora).
pluralNoun(fun, fun).
pluralNoun(fungus, fungi).
pluralNoun(furniture, furniture).
pluralNoun(garbage, garbage).
pluralNoun(gateau, gateaux).
pluralNoun(genus, genera).
pluralNoun(glasses, glasses).
pluralNoun(goose, geese).
pluralNoun(graffito, graffiti).
pluralNoun(graffiti, graffiti).
pluralNoun(grass, grass).
pluralNoun(hair, hair).
pluralNoun(isthmus, isthmuses).
pluralNoun(half, halves).
pluralNoun(happiness, happiness).
pluralNoun(help, help).
pluralNoun(hero, heroes).
pluralNoun(hippopotamus, hippopotami).
pluralNoun(homework, homework).
pluralNoun(honesty, honesty).
pluralNoun(index, indices).
pluralNoun(information, information).
pluralNoun(insignia, insignia).
pluralNoun(jeans, jeans).
pluralNoun(juice, juice).
pluralNoun(knife, knives).
pluralNoun(knowledge, knowledge).
pluralNoun(larva, larvae).
pluralNoun(laughter, laughter).
pluralNoun(leaf, leaves).
pluralNoun(life, lives).
pluralNoun(loaf, loaves).
pluralNoun(loch, lochs).
pluralNoun(locus, loci).
pluralNoun(louse, lice).
pluralNoun(luck, luck).
pluralNoun(macaroni, macaroni).
% pluralNoun(man, men).
pluralNoun(X, Z) :-
  sub_atom(X, Before, _, 0, man), 
  sub_atom(X, 0, Before, _, Y), 
  atom_concat(Y, men, Z).
pluralNoun(mass, masses).
pluralNoun(matrix, matrices).
pluralNoun(medium, media).
pluralNoun(memorandum, memoranda).
pluralNoun(milieu, milieux).
pluralNoun(millenium, millenia).
pluralNoun(money, money).
pluralNoun(monarch, monarchs).
pluralNoun(moose, moose).
pluralNoun(mouse, mice).
pluralNoun(music, music).
pluralNoun(news, news).
pluralNoun(nucleus, nuclei).
pluralNoun(omnibus, omnibuses).
pluralNoun(opus, opera).
pluralNoun(opera, opera).
pluralNoun(ox, oxen).
pluralNoun(panino, panini).
pluralNoun(panini, panini).
pluralNoun(paparazzo, paparazzi).
pluralNoun(paparazzi, paparazzi).
pluralNoun(pasta, pasta).
pluralNoun(person, people).
pluralNoun(phenomenon, phenomena).
pluralNoun(pike, pike).
pluralNoun(polyhedron, polyhedra).
pluralNoun(radius, radii).
pluralNoun(ravioli, ravioli).
pluralNoun(safety, safety).
pluralNoun(salmon, salmon).
pluralNoun(salt, salt).
pluralNoun(scenery, scenery).
pluralNoun(scissors, scissors).
pluralNoun(self, selves).
pluralNoun(series, series).
pluralNoun(sheaf, sheaves).
pluralNoun(sheep, sheep).
pluralNoun(shelf, shelves).
pluralNoun(spaghetti, spaghetti).
pluralNoun(species, species).
pluralNoun(sports, sports).
pluralNoun(stadium, stadia).
pluralNoun(status, statuses).
pluralNoun(stigma, stigmata).
pluralNoun(stoma, stomata).
pluralNoun(stratum, strata).
pluralNoun(strength, strength).
pluralNoun(stuff, stuff).
pluralNoun(sunshine, sunshine).
pluralNoun(swine, swine).
pluralNoun(syllabus, syllabi).
pluralNoun(tableau, tableaux).
pluralNoun(tagliatelli, tagliatelli).
pluralNoun(terminus, termini).
pluralNoun(testis, testes).
pluralNoun(thief, thieves).
pluralNoun(thunder, thunder).
pluralNoun(tomato, tomatoes).
pluralNoun(tooth, teeth).
pluralNoun(transport, transport).
pluralNoun(travel, travel).
pluralNoun(trousers, trousers).
pluralNoun(trout, trout).
pluralNoun(vertex, vertices).
pluralNoun(violence, violence).
pluralNoun(virtuoso, virtuosi).
pluralNoun(viscus, viscera).
pluralNoun(water, water).
pluralNoun(wealth, wealth).
pluralNoun(weather, weather).
pluralNoun(wife, wives).
pluralNoun(wisdom, wisdom).
pluralNoun(wolf, wolves).
% pluralNoun(woman, women).
pluralNoun(young, youngsters).

