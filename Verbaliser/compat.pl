% compat.pl Handle differences between Prolog dialects.

% Written by Allan Third
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

%:- module(compat, []).

:- if(\+ current_predicate(_,_Module:directory_files(_A, _B)) ). 
directory_files(Directory,Files) :-
    file_members_of_directory(Directory, FileSet),
    directory_members_of_directory(Directory,DirSet),
    append(FileSet,DirSet,ContentsSet),
    just_file_names(ContentsSet,Filenames),
    append(['.','..'],Filenames,Files).

just_file_names([],[]).
just_file_names([ Name-_Path | Tail], [Name | FTail]) :-
    just_file_names(Tail, FTail).
 
:- endif.   
 
:- if(current_prolog_flag(dialect, sicstus)).
 
:- use_module(library(file_systems)).
:- use_module(library(tcltk)).
:- use_module(library(xml)).
:- use_module(library(codesio)).

:- if(\+(current_predicate(_, _Module:flatten(_A,_B)))).
user:flatten([], []).
user:flatten([H|T], Flat) :-
    is_list(H),
    user:flatten(T,F),
    append(H, F, Flat).
 
:- endif.

:- if(\+ current_predicate(_, _Module:utf8_encoding_name(_A)) ).
user:utf8_encoding_name('UTF-8').
:- endif.

:- if(\+(current_predicate(_, _Module:termAtom(_T, _A)))).
% termAtom/2 termAtom(+Term, -Atom)
user:termAtom(Term, Atom) :-
  write_term_to_codes( Term, Codes, [quoted(true)] ),
  atom_codes(Atom, Codes).
:- endif.

:- elif(current_prolog_flag(dialect, swi)).
 
:- use_module(xml).

:- if(\+ current_predicate(_, _Module:utf8_encoding_name(_A)) ).
user:utf8_encoding_name(utf8).
:- endif.

:- if(\+ current_predicate(_,_Module:file_exists(_A)) ).
user:file_exists(File) :- exists_file(File).
:- endif.
 
:- if(\+(current_predicate(_, _Module:nth1(_A, _B, _C, _D)))).
user:nth1(N, List, Element, Rest) :-
  nth1(N, List, Element),!,
  M is N - 1,
  length(EmptyList1, M),
  append(EmptyList1, [Element], BigHead),
  length(List, Length),
  P is Length - N,
  length(Tail, P), 
  append(BigHead, Tail, List),
  append(EmptyList1, Tail, Rest).
:- endif.

:- if(\+(current_predicate(_, _Module:keyclumped(_A, _B)))).
user:keyclumped(KeyPairs,KeyLists) :-
  group_pairs_by_key(KeyPairs,KeyLists).
:- endif.

:- if(\+(current_predicate(_, _Module:termAtom(_T, _A)))).
user:termAtom(Term, Atom) :-
  term_to_atom(Term, Atom).
:- endif.

user:swi_prolog_compile :-
    qsave_program('pl-process-ontology', [local=1048576, global=1048576, trail=1048576, goal=user:runtime_entry(start), stand_alone=true]).

:- else.

:- write('Unsupported Prolog dialect.'),nl,halt.

:- endif.
