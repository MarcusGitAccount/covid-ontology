SWAT verbaliser

LICENSE

This package is free software; you can redistribute it and/or
modify it under the terms of the GNU Library General Public
License as published by the Free Software Foundation; either
version 3 of the License, or (at your option) any later version.

The package is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
Library General Public License for more details.

INSTRUCTIONS

The purpose of the program is to produce nagivable English texts
which present the content of one or more OWL ontologies.

Since it makes use of entity names or labels from the OWL code,
it will achieve a reasonable approximation to English only if
the ontology uses suitable English names/labels.

The main directory contains code in SWI prolog and some files
employed in presenting texts (e.g., stylesheet).

The sub-directories named "ontology" and "text" hold inputs and
outputs. Inputs in "ontology" should be ontologies conforming to
OWL-DL, coded in OWL/XML format. If your ontology is not in this
format, use a converter such as this one from Manchester University.

       http://owl.cs.manchester.ac.uk/converter/

Outputs will be written to the "text" directory and include Prolog
work files as well as texts. If you are not interested in the inner
workings of the program, you should look only at the text outputs,
of which there will be three for each ontology. If the ontology is
named, for example, wine.xml, these files will be as follows:

  wineText.xml
  wineAggregatedText.xml
  wineDefinitionsText.xml

To display them, open in a web browser (e.g., Safari).

The first output file verbalises axioms separately in unorganised
plain text. The second aggregates related axioms, so that two
statements about the same entity might be presented in the same
sentence. The third presents the ontology as a linked hypertext
that groups statements relating to each individual/class/property.
This is the best resource for navigating the information in the 
ontology.

To run the program, proceed as follows:

1. Copy some XML ontologies into the "ontology" directory.

2. Open a terminal in the main directory and start SWI prolog.

3. Load the program by typing "[main]." (without quotes of course)
   followed by carriage return.

4. To run the program over all your ontologies call main/0 (by
   typing "main." and carriage return). To run for a selected
   ontology call main/1, e.g. by typing "main(wine).".

5. Look at the results in the "text" directory by opening one of
   the XML output files (see above) in a web browser.

You can also make something called an Ontopedia which combines
information from several ontologies, and is effective when they
use overlapping names (i.e., share some topics). To make this
for all the ontologies in your "ontology" directory, simply call
onto/0. It will produce a file called ontopedia.html in your
"text" directory. Open in a browser and you will see something
like a dictionary that groups related names, with links to the
ontology-specific texts that give their definitions.

To make an ontopedia for selected ontologies, call onto/1 which
takes a list of ontology names as argument. For instance:

       onto([book,wine]).

This combines only the book and wine ontologies.









