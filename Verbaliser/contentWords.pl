% contentWords.pl Reading a verbalised ontology file 

% Written by Sandra Williams
% Copyright (c) 2010 by Open University

%==================================================

:- module(contentWords, [contentWords/2]).

:- use_module(library(lists)).
:- use_module(save, [loadLines/2, saveList/2]).
:- use_module(library(system)).

:- use_module(config). 
:- consult(compat).

% Module code

contentWords(FileName, Str) :-
  atom_concat(FileName, Str, OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  file_exists(OutputFile),
  write(OutputFile), write(' already exists'), nl, !.

contentWords(FileName, 'Text') :-
  atom_concat(FileName, 'Text.txt', InputFileName),
  atom_concat(FileName, 'VerbalisedWords.txt', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  words(InputFile, OutputFile).

contentWords(FileName, 'Aggregated') :-
  atom_concat(FileName, 'AggregatedText.txt', InputFileName),
  atom_concat(FileName, 'AggregatedWords.txt', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  words(InputFile, OutputFile).

contentWords(FileName, 'Definitions') :-
  atom_concat(FileName, 'DefinitionsText.txt', InputFileName),
  atom_concat(FileName, 'DefinitionsWords.txt', OutputFileName),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, OutputFileName, OutputFile),
  atom_concat(DirectorySlash, InputFileName, InputFile),
  words(InputFile, OutputFile).

words(InputFile, OutputFile) :-
  loadLines(InputFile, Sentences),
  getContentWords(Sentences, ContentWordLists),
  flatten(ContentWordLists, UnsortedWords),
  count(UnsortedWords, WordCounts),
  sort(WordCounts, SortedWordCounts),
  saveList(OutputFile, SortedWordCounts).  

getContentWords([], []).

getContentWords([SentAtom|Sentences], [ContentWordList|ContentWordLists]) :-
  atom_chars(SentAtom, SentChars),
  chars2words(SentChars,WordList), 
  content(WordList, ContentWordList),
  getContentWords(Sentences, ContentWordLists).

buildWord([], [], []):- !.

buildWord([C|Chars],[],[C|Chars]):-
  specialChar(C),!.

buildWord([C1|Chars],[C2|WordChars],CharsLeft):-
  wordChar(C1, C2),!,
  buildWord(Chars,WordChars,CharsLeft).

chars2words([],[]):- !.

chars2words([C|Chars], Words) :- 
  specialChar(C),!,
  chars2words(Chars,Words).

chars2words(Chars, [Word|Words]) :-
  buildWord(Chars,WordChars, CharsLeft),
  name(Word,WordChars),
  chars2words(CharsLeft, Words).

specialChar(X) :- \+ wordChar(X,_).

wordChar(Character,Character) :-
  name('abcdefghijklmnopqrstuvwxyz-_', LowerCase),
  member(Character, LowerCase).
%  Character > 96,
%  Character < 123. %% a-z

wordChar(Character1,Character2) :-
  name('ABCDEFGHIJKLMNOPQRSTUVWXYZ', UpperCase),
  member(Character1, UpperCase),
  %Character1 > 64, %% A-Z
  %Character1 < 91, %% map upper case to lower
  Character2 is Character1 + 32.


/*wordChar(45,45). %% - (dash)

wordChar(95,95). %% - (underscore)
*/	
content([], []).
  
content([Word|Rest], WordList) :-
  stopWord(Word),
  content(Rest, WordList), !.
  
content([Word|Rest], [Word|WordList]) :-
  content(Rest, WordList).
  

:- if(\+(current_predicate(_, contentWords:flatten(_A,_B)))).
contentWords:flatten([], []).
contentWords:flatten([H|T], Flat) :-
    is_list(H),
    contentWords:flatten(T,F),
    append(H, F, Flat).

:- endif.

%flatten([], []).

%flatten([H|T], Flat) :-
%  is_list(H),
%  flatten(T, F),
%  append(H, F, Flat).

count([],[]).

count([Word|Words], [[Count, Word]|Rest]) :-
  length([Word|Words], N1),
  delete(Words, Word, Rem),
  length(Rem, N2),
  Count is N1 - N2,
  count(Rem, Rest).


stopWord(a).
stopWord(about).
stopWord(above).
stopWord(across).
stopWord(after).
stopWord(afterwards).
stopWord(again).
stopWord(against).
stopWord(all).
stopWord(almost).
stopWord(alone).
stopWord(along).
stopWord(already).
stopWord(also).
stopWord(although).
stopWord(always).
stopWord(am).
stopWord(among).
stopWord(amongst).
stopWord(amoungst).
stopWord(amount).
stopWord(an).
stopWord(and).
stopWord(another).
stopWord(any).
stopWord(anyhow).
stopWord(anyone).
stopWord(anything).
stopWord(anyway).
stopWord(anywhere).
stopWord(are).
stopWord(around).
stopWord(as).
stopWord(at).
stopWord(back).
stopWord(be).
stopWord(became).
stopWord(because).
stopWord(become).
stopWord(becomes).
stopWord(becoming).
stopWord(been).
stopWord(before).
stopWord(beforehand).
stopWord(behind).
stopWord(being).
stopWord(below).
stopWord(beside).
stopWord(besides).
stopWord(between).
stopWord(beyond).
stopWord(bill).
stopWord(both).
stopWord(bottom).
stopWord(but).
stopWord(by).
stopWord(call).
stopWord(can).
stopWord(cannot).
stopWord(cant).
stopWord(co).
stopWord(computer).
stopWord(con).
stopWord(could).
stopWord(couldnt).
stopWord(cry).
stopWord(de).
stopWord(describe).
stopWord(detail).
stopWord(do).
stopWord(done).
stopWord(down).
stopWord(due).
stopWord(during).
stopWord(each).
stopWord(eg).
stopWord(eight).
stopWord(either).
stopWord(eleven).
stopWord(else).
stopWord(elsewhere).
stopWord(empty).
stopWord(enough).
stopWord(etc).
stopWord(even).
stopWord(ever).
stopWord(every).
stopWord(everyone).
stopWord(everything).
stopWord(everywhere).
stopWord(except).
stopWord(few).
stopWord(fifteen).
stopWord(fify).
stopWord(fill).
stopWord(find).
stopWord(fire).
stopWord(first).
stopWord(five).
stopWord(for).
stopWord(former).
stopWord(formerly).
stopWord(forty).
stopWord(found).
stopWord(four).
stopWord(from).
stopWord(front).
stopWord(full).
stopWord(further).
stopWord(get).
stopWord(give).
stopWord(go).
stopWord(had).
stopWord(has).
stopWord(hasnt).
stopWord(have).
stopWord(he).
stopWord(hence).
stopWord(her).
stopWord(here).
stopWord(hereafter).
stopWord(hereby).
stopWord(herein).
stopWord(hereupon).
stopWord(hers).
stopWord(him).
stopWord(himself).
stopWord(his).
stopWord(how).
stopWord(however).
stopWord(hundred).
stopWord(i).
stopWord(ie).
stopWord(if).
stopWord(in).
stopWord(inc).
stopWord(indeed).
stopWord(interest).
stopWord(into).
stopWord(is).
stopWord(it).
stopWord(its).
stopWord(itself).
stopWord(keep).
stopWord(last).
stopWord(latter).
stopWord(latterly).
stopWord(least).
stopWord(less).
stopWord(ltd).
stopWord(made).
stopWord(many).
stopWord(may).
stopWord(me).
stopWord(meanwhile).
stopWord(might).
stopWord(mill).
stopWord(mine).
stopWord(more).
stopWord(moreover).
stopWord(most).
stopWord(mostly).
stopWord(move).
stopWord(much).
stopWord(must).
stopWord(my).
stopWord(myself).
stopWord(name).
stopWord(namely).
stopWord(neither).
stopWord(never).
stopWord(nevertheless).
stopWord(next).
stopWord(nine).
stopWord(no).
stopWord(nobody).
stopWord(none).
stopWord(noone).
stopWord(nor).
stopWord(not).
stopWord(nothing).
stopWord(now).
stopWord(nowhere).
stopWord(of).
stopWord(off).
stopWord(often).
stopWord(on).
stopWord(once).
stopWord(one).
stopWord(only).
stopWord(onto).
stopWord(or).
stopWord(other).
stopWord(others).
stopWord(otherwise).
stopWord(our).
stopWord(ours).
stopWord(ourselves).
stopWord(out).
stopWord(over).
stopWord(own).
stopWord(part).
stopWord(per).
stopWord(perhaps).
stopWord(please).
stopWord(put).
stopWord(rather).
stopWord(re).
stopWord(same).
stopWord(see).
stopWord(seem).
stopWord(seemed).
stopWord(seeming).
stopWord(seems).
stopWord(serious).
stopWord(several).
stopWord(she).
stopWord(should).
stopWord(show).
stopWord(side).
stopWord(since).
stopWord(sincere).
stopWord(six).
stopWord(sixty).
stopWord(so).
stopWord(some).
stopWord(somehow).
stopWord(someone).
stopWord(something).
stopWord(sometime).
stopWord(sometimes).
stopWord(somewhere).
stopWord(still).
stopWord(such).
stopWord(system).
stopWord(take).
stopWord(ten).
stopWord(than).
stopWord(that).
stopWord(the).
stopWord(their).
stopWord(them).
stopWord(themselves).
stopWord(then).
stopWord(thence).
stopWord(there).
stopWord(thereafter).
stopWord(thereby).
stopWord(therefore).
stopWord(therein).
stopWord(thereupon).
stopWord(these).
stopWord(they).
stopWord(thick).
stopWord(thin).
stopWord(third).
stopWord(this).
stopWord(those).
stopWord(though).
stopWord(three).
stopWord(through).
stopWord(throughout).
stopWord(thru).
stopWord(thus).
stopWord(to).
stopWord(together).
stopWord(too).
stopWord(top).
stopWord(toward).
stopWord(towards).
stopWord(twelve).
stopWord(twenty).
stopWord(two).
stopWord(un).
stopWord(under).
stopWord(until).
stopWord(up).
stopWord(upon).
stopWord(us).
stopWord(very).
stopWord(via).
stopWord(was).
stopWord(we).
stopWord(well).
stopWord(were).
stopWord(what).
stopWord(whatever).
stopWord(when).
stopWord(whence).
stopWord(whenever).
stopWord(where).
stopWord(whereafter).
stopWord(whereas).
stopWord(whereby).
stopWord(wherein).
stopWord(whereupon).
stopWord(wherever).
stopWord(whether).
stopWord(which).
stopWord(while).
stopWord(whither).
stopWord(who).
stopWord(whoever).
stopWord(whole).
stopWord(whom).
stopWord(whose).
stopWord(why).
stopWord(will).
stopWord(with).
stopWord(within).
stopWord(without).
stopWord(would).
stopWord(yet).
stopWord(you).
stopWord(your).
stopWord(yours).
stopWord(yourself).
stopWord(yourselves).
