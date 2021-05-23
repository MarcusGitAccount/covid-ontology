% save.pl Utilities for saving and loading lists 

% Written by Richard Power
% Modified by Sandra
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

:- module(save, [test/0,saveList/2,loadList/2,loadLines/2]).

:- use_module(library(lists)).
:- consult(compat).

% Module code

test :- 
  saveList('test', [a(b,c),d(1,2,3),h,4,5.6]),
  loadList('test', List), write(List), nl.

saveHTMLList(FileName, List) :-
  user:utf8_encoding_name(Enc),
  open(FileName, write, Stream, [encoding(Enc)]),
  copyList(List, ListOut),
  writeHTMLTerms(Stream, ListOut),
  close(Stream),
  write(FileName), write(' written'), nl.

saveList(FileName, List) :-
  user:utf8_encoding_name(Enc),
  open(FileName, write, Stream, [encoding(Enc)]),
  copyList(List, ListOut),
  writeTerms(Stream, ListOut),
  close(Stream),
  write(FileName), write(' written'), nl.

loadList(FileName, List) :-
  user:utf8_encoding_name(Enc),
  open(FileName, read, Stream, [encoding(Enc)]),
  readTerms(Stream, ListOriginal),
  copyList(ListOriginal, List),
  close(Stream).

writeHTMLTerms(_Stream, []).
writeHTMLTerms(Stream, [T | Ts]) :- 
        write(Stream, '<p>'),
        nl(Stream),
        writeTerm(Stream, T), 
        write(Stream, '</p>'),
        nl(Stream),
        writeTerms(Stream, Ts).

writeTerms(_Stream, []).
writeTerms(Stream, [T|Ts]) :- writeTerm(Stream, T), writeTerms(Stream, Ts).

writeTerm(Stream, Term) :-
  writeT(Stream, Term),
  write(Stream, '.'),
  nl(Stream).

% writeT(Stream, T) :- atom(T), write(Stream, T), !.
writeT(Stream, T) :- writeq(Stream, T).

readTerms(Stream, []) :- at_end_of_stream(Stream), !.

readTerms(Stream, [T|Ts]) :-
  read(Stream, T),
  readTerms(Stream, Ts).

%  Added by Sandra
loadLines(FileName, List) :-
  open(FileName, read, Stream),
  readText(Stream, List),
  close(Stream).

readText(Stream, []) :- at_end_of_stream(Stream), !.

readText(Stream, [A|As]) :-
  read_line(Stream, L),!,
  atom_chars(A,L),
  readText(Stream, As).

copyList([], []).
copyList(['end_of_file' | T], CopyTail) :-
        copyList(T, CopyTail),!.
copyList([H | T], [H | CopyTail]) :-
        copyList(T, CopyTail).
                                       

