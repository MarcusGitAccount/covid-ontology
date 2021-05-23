/* -*- Mode:Prolog -*- */

% Copyright (c) by Open University
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

:- module(config, [ontologyDirectory/1,
                   sourceDirectory/1,
                   testing/1,
                   logfile/1,
                   xslStylesheet/2,
                   xmlDTD/1]).

ontologyDirectory('./text').
sourceDirectory('./ontology').
testing(false).
logfile('swat-prolog-log.txt').

xslStylesheet(plain, '../SWATStylesheet.xsl').
xmlDTD('../swatxml.dtd').