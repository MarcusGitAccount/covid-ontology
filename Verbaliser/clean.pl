% clean.pl Cleans up references in the XML output files

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

:- module(clean, [clean/1,clean/0]).

:- use_module(library(lists)).
:- use_module(save, [loadList/2,saveList/2]).
:- use_module(library(system)).
:- use_module(library(sgml)).
:- use_module(config). 

:- consult(compat).

% Module code

clean :- clean('ODP', 1-10).

clean(FileName) :-
  atom_concat(FileName,'DefinitionsText.xml', Name),
  ontologyDirectory(Directory),
  atom_concat(Directory, '/', DirectorySlash),
  atom_concat(DirectorySlash, Name, InputFile),
  write(InputFile), nl,
  load_structure(InputFile, [_,B], [dialect(xml),space(remove)]),
  A = pi('xml-stylesheet type="text/xsl" href="SWATstylesheet.xsl"'),
  open(InputFile, write, Str),
  xml_write(Str, [A,B], [layout(false)]),
  close(Str).

clean(_, N-M) :- N>M, !.
clean(Name, N-M) :- cleanN(Name, N), Next is N+1, clean(Name, Next-M).

cleanN(Name, N) :-
  atom_number(A, N),
  atom_concat(Name, A, NameA),
  atom_concat(NameA, '.owl', FileName),
  clean(FileName).
