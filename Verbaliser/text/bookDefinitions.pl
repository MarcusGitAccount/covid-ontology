'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens">\n<title type="individual">CHARLES DICKENS</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man'),numberOfElements('5')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield">\n<title type="individual">DAVID COPPERFIELD</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#novel'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England">\n<title type="individual">ENGLAND</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishman">\n<title type="class">ENGLISHMAN</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishman'),objectIntersectionOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man'),objectHasValue(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishman'),[class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man')]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishman'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishwoman">\n<title type="class">ENGLISHWOMAN</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishwoman'),objectIntersectionOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman'),objectHasValue(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishwoman'),[class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishwoman'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten">\n<title type="individual">JANE AUSTEN</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),numberOfElements('5')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy">\n<title type="individual">LEO TOLSTOY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man'),numberOfElements('5')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice">\n<title type="individual">THE PRIDE AND PREJUDICE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#novel'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia">\n<title type="individual">RUSSIA</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russian">\n<title type="class">RUSSIAN</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russian'),objectIntersectionOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),objectHasValue(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia')))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russian'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russian'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace">\n<title type="individual">THE WAR AND PEACE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('http://www.w3.org/2002/07/owl#Thing'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#novel'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#author">\n<title type="class">AUTHOR</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#author'),objectIntersectionOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),objectSomeValuesFrom(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#author'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#author'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf">\n<title type="object property">IS AUTHOR OF</title>\n<text>'.
'<subgroup id="Description">'.
inverseObjectProperties(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf')).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book">\n<title type="class">BOOK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyDomain(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield')]).
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#novel'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country">\n<title type="class">COUNTRY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#regionOf'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man">\n<title type="class">MAN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')]).
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishman'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#novel">\n<title type="class">NOVEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#novel'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#novel'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person">\n<title type="class">PERSON</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
objectPropertyDomain(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#man'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#author'),numberOfElements('6')],class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place">\n<title type="class">PLACE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')]).
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#regionOf">\n<title type="object property">IS REGION OF</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#regionOf'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#country')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn">\n<title type="object property">IS RESIDENT IN</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place')).
objectPropertyDomain(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#residentIn'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')],namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#England')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman">\n<title type="class">WOMAN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Englishwoman'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman')).
classAssertion(class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#woman'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy">\n<title type="object property">IS WRITTEN BY</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person')).
objectPropertyDomain(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')).
'</subgroup>'.
'<subgroup id="Description">'.
inverseObjectProperties(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#authorOf')).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#DavidCopperfield'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#CharlesDickens')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#JaneAusten')).
objectPropertyAssertion(objectProperty('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#writtenBy'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#LeoTolstoy')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.w3.org/2002/07/owl#Thing">\n<title type="class">THING</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.w3.org/2002/07/owl#Thing'),[namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#WarAndPeace'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#Russia'),namedIndividual('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#PrideAndPrejudice'),numberOfElements('8')]).
subClassOf([class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#place'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#person'),class('http://www.semanticweb.org/ontologies/2010/4/Ontology1273848485010.owl#book')],class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'</text>\n</description>'.
