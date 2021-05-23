declaration(class(iri='#Christian_denomination')).
declaration(class(iri='#academy_school')).
declaration(class(iri='#bed-and-breakfast')).
declaration(class(iri='#bowling_club')).
declaration(class(iri='#category-A-listed_building')).
declaration(class(iri='#council_committee_area')).
declaration(class(iri='#country')).
declaration(class(iri='#county')).
declaration(class(iri='#estate')).
declaration(class(iri='#granite')).
declaration(class(iri='#guest_house')).
declaration(class(iri='#house')).
declaration(class(iri='#place_of_interest')).
declaration(class(iri='#playing_field')).
declaration(class(iri='#primary_school')).
declaration(class(iri='#public_house')).
declaration(class(iri='#settlement')).
declaration(class(iri='#skate_park')).
declaration(class(iri='#town')).
declaration(class(iri='#village')).
declaration(dataproperty(iri='#has_approximate_population_of')).
declaration(dataproperty(iri='#is_dated')).
declaration(dataproperty(iri='#is_opened_in')).
declaration(namedindividual(iri='#Aberdeen')).
declaration(namedindividual(iri='#Aberdeenshire')).
declaration(namedindividual(iri='#Alehousewells_Primary_School')).
declaration(namedindividual(iri='#Bogbeth_Park')).
declaration(namedindividual(iri='#Fetternear_Estate')).
declaration(namedindividual(iri='#Garioch')).
declaration(namedindividual(iri='#Inverurie')).
declaration(namedindividual(iri='#John_Fyfe')).
declaration(namedindividual(iri='#Kemnay')).
declaration(namedindividual(iri='#Kemnay_Academy')).
declaration(namedindividual(iri='#Kemnay_Bowling_Club')).
declaration(namedindividual(iri='#Kemnay_House')).
declaration(namedindividual(iri='#Kemnay_Parish_Church')).
declaration(namedindividual(iri='#Kemnay_Primary_School')).
declaration(namedindividual(iri='#Kemnay_Quarry')).
declaration(namedindividual(iri='#Kemnay_Roman_Catholic_Church')).
declaration(namedindividual(iri='#Kemnay_Skate_Park')).
declaration(namedindividual(iri='#Kenmay_Quarry')).
declaration(namedindividual(iri='#Scotland')).
declaration(namedindividual(iri='#St_Anne\'s_Church')).
declaration(namedindividual(iri='#The_Bennachie_Lodge')).
declaration(namedindividual(iri='#The_Burnett_Arms_Hotel')).
declaration(namedindividual(iri='#The_Church_of_Scotland')).
declaration(namedindividual(iri='#The_Forth_Railway_Bridge')).
declaration(namedindividual(iri='#The_Glasgow_Cenotaph')).
declaration(namedindividual(iri='#The_Kemnay_Academy_2014_extension_plan')).
declaration(namedindividual(iri='#The_Roman_Catholic_Church')).
declaration(namedindividual(iri='#The_Scottish_Episcopal_Church')).
declaration(namedindividual(iri='#Westhill')).
declaration(namedindividual(iri='#the_River_Don')).
declaration(objectproperty(iri='#is_constructed_using')).
declaration(objectproperty(iri='#is_extending')).
declaration(objectproperty(iri='#is_founded_by')).
declaration(objectproperty(iri='#is_located_in')).
declaration(objectproperty(iri='#is_located_on')).
declaration(objectproperty(iri='#is_more_populous_than')).
declaration(objectproperty(iri='#is_provided_with')).
declaration(objectproperty(iri='#is_quarried_in')).
declaration(objectproperty(iri='#is_west_of')).
classassertion(class(iri='#Christian_denomination'),namedindividual(iri='#The_Church_of_Scotland')).
classassertion(class(iri='#Christian_denomination'),namedindividual(iri='#The_Roman_Catholic_Church')).
classassertion(class(iri='#Christian_denomination'),namedindividual(iri='#The_Scottish_Episcopal_Church')).
classassertion(class(iri='#academy_school'),namedindividual(iri='#Kemnay_Academy')).
classassertion(class(iri='#category-A-listed_building'),namedindividual(iri='#Kemnay_House')).
classassertion(class(iri='#council_committee_area'),namedindividual(iri='#Garioch')).
classassertion(class(iri='#country'),namedindividual(iri='#Scotland')).
classassertion(class(iri='#county'),namedindividual(iri='#Aberdeenshire')).
classassertion(class(iri='#estate'),namedindividual(iri='#Fetternear_Estate')).
classassertion(class(iri='#place_of_interest'),namedindividual(iri='#Fetternear_Estate')).
classassertion(class(iri='#playing_field'),namedindividual(iri='#Bogbeth_Park')).
classassertion(class(iri='#primary_school'),namedindividual(iri='#Alehousewells_Primary_School')).
classassertion(class(iri='#primary_school'),namedindividual(iri='#Kemnay_Primary_School')).
classassertion(class(iri='#skate_park'),namedindividual(iri='#Kemnay_Skate_Park')).
classassertion(class(iri='#village'),namedindividual(iri='#Kemnay')).
classassertion(datahasvalue(dataproperty(iri='#has_approximate_population_of'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','4000')),namedindividual(iri='#Kemnay')).
classassertion(datahasvalue(dataproperty(iri='#is_dated'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','2014')),namedindividual(iri='#The_Kemnay_Academy_2014_extension_plan')).
classassertion(objecthasvalue(objectproperty(iri='#is_extending'),namedindividual(iri='#Kemnay_Academy')),namedindividual(iri='#The_Kemnay_Academy_2014_extension_plan')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Aberdeenshire')),namedindividual(iri='#Garioch')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Bogbeth_Park')),namedindividual(iri='#Kemnay_Skate_Park')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Garioch')),namedindividual(iri='#Kemnay')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Alehousewells_Primary_School')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Bogbeth_Park')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Fetternear_Estate')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Kemnay_Parish_Church')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Kemnay_Primary_School')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Kemnay_Roman_Catholic_Church')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay')),namedindividual(iri='#St_Anne\'s_Church')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Scotland')),namedindividual(iri='#Aberdeenshire')).
classassertion(objecthasvalue(objectproperty(iri='#is_located_on'),namedindividual(iri='#the_River_Don')),namedindividual(iri='#Kemnay')).
classassertion(objecthasvalue(objectproperty(iri='#is_more_populous_than'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Inverurie')).
classassertion(objecthasvalue(objectproperty(iri='#is_more_populous_than'),namedindividual(iri='#Kemnay')),namedindividual(iri='#Westhill')).
classassertion(objecthasvalue(objectproperty(iri='#is_more_populous_than'),namedindividual(iri='#Westhill')),namedindividual(iri='#Inverurie')).
classassertion(objecthasvalue(objectproperty(iri='#is_west_of'),namedindividual(iri='#Aberdeen')),namedindividual(iri='#Kemnay')).
classassertion(objectintersectionof(class(iri='#bowling_club'),objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay'))),namedindividual(iri='#Kemnay_Bowling_Club')).
classassertion(objectintersectionof(class(iri='#house'),objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay'))),namedindividual(iri='#Kemnay_House')).
classassertion(objectintersectionof(class(iri='#public_house'),objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay'))),namedindividual(iri='#The_Bennachie_Lodge')).
classassertion(objectintersectionof(class(iri='#public_house'),objecthasvalue(objectproperty(iri='#is_located_in'),namedindividual(iri='#Kemnay'))),namedindividual(iri='#The_Burnett_Arms_Hotel')).
classassertion(objectintersectionof(datahasvalue(dataproperty(iri='#is_opened_in'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','1830')),objecthasvalue(objectproperty(iri='#is_founded_by'),namedindividual(iri='#John_Fyfe'))),namedindividual(iri='#Kemnay_Quarry')).
classassertion(objectsomevaluesfrom(objectproperty(iri='#is_constructed_using'),objectintersectionof(class(iri='#granite'),objecthasvalue(objectproperty(iri='#is_quarried_in'),namedindividual(iri='#Kenmay_Quarry')))),namedindividual(iri='#The_Forth_Railway_Bridge')).
classassertion(objectsomevaluesfrom(objectproperty(iri='#is_constructed_using'),objectintersectionof(class(iri='#granite'),objecthasvalue(objectproperty(iri='#is_quarried_in'),namedindividual(iri='#Kenmay_Quarry')))),namedindividual(iri='#The_Glasgow_Cenotaph')).
classassertion(objectsomevaluesfrom(objectproperty(iri='#is_provided_with'),class(iri='#bed-and-breakfast')),namedindividual(iri='#Kemnay')).
classassertion(objectsomevaluesfrom(objectproperty(iri='#is_provided_with'),class(iri='#guest_house')),namedindividual(iri='#Kemnay')).
classassertion(objectsomevaluesfrom(objectproperty(iri='#is_provided_with'),class(iri='#public_house')),namedindividual(iri='#Kemnay')).
subclassof(class(iri='#town'),class(iri='#settlement')).
subclassof(class(iri='#village'),class(iri='#settlement')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#Christian_denomination'),literal('Christian denomination')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#academy_school'),literal('academy school')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#bed-and-breakfast'),literal('bed-and-breakfast')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#bowling_club'),literal('bowling club')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#category-A-listed_building'),literal('category-A-listed building')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#council_committee_area'),literal('council committee area')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#country'),literal(country)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#county'),literal(county)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#estate'),literal(estate)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#granite'),literal(granite)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#guest_house'),literal('guest house')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#house'),literal(house)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#place_of_interest'),literal('place of interest')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#playing_field'),literal('playing field')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#primary_school'),literal('primary school')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#public_house'),literal('public house')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#settlement'),literal(settlement)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#skate_park'),literal('skate park')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#town'),literal(town)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/class'),iri('#village'),literal(village)).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/dataProperty'),iri('#has_approximate_population_of'),literal('has approximate population of')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/dataProperty'),iri('#is_dated'),literal('is dated')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/dataProperty'),iri('#is_opened_in'),literal('is opened in')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Aberdeen'),literal('Aberdeen')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Aberdeenshire'),literal('Aberdeenshire')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Alehousewells_Primary_School'),literal('Alehousewells Primary School')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Bogbeth_Park'),literal('Bogbeth Park')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Fetternear_Estate'),literal('Fetternear Estate')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Garioch'),literal('Garioch')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Inverurie'),literal('Inverurie')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#John_Fyfe'),literal('John Fyfe')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay'),literal('Kemnay')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Academy'),literal('Kemnay Academy')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Bowling_Club'),literal('Kemnay Bowling Club')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_House'),literal('Kemnay House')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Parish_Church'),literal('Kemnay Parish Church')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Primary_School'),literal('Kemnay Primary School')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Quarry'),literal('Kemnay Quarry')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Roman_Catholic_Church'),literal('Kemnay Roman Catholic Church')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Skate_Park'),literal('Kemnay Skate Park')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Kenmay_Quarry'),literal('Kenmay Quarry')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Scotland'),literal('Scotland')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#St_Anne\'s_Church'),literal('St Anne\'s Church')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Bennachie_Lodge'),literal('The Bennachie Lodge')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Burnett_Arms_Hotel'),literal('The Burnett Arms Hotel')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Church_of_Scotland'),literal('The Church of Scotland')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Forth_Railway_Bridge'),literal('The Forth Railway Bridge')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Glasgow_Cenotaph'),literal('The Glasgow Cenotaph')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Kemnay_Academy_2014_extension_plan'),literal('The Kemnay Academy 2014 extension plan')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Roman_Catholic_Church'),literal('The Roman Catholic Church')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#The_Scottish_Episcopal_Church'),literal('The Scottish Episcopal Church')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#Westhill'),literal('Westhill')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/namedIndividual'),iri('#the_River_Don'),literal('the River Don')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_constructed_using'),literal('is constructed using')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_extending'),literal('is extending')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_founded_by'),literal('is founded by')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_located_in'),literal('is located in')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_located_on'),literal('is located on')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_more_populous_than'),literal('is more populous than')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_provided_with'),literal('is provided with')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_quarried_in'),literal('is quarried in')).
annotationassertion(annotationproperty(iri='http://www.swatproject.org/objectProperty'),iri('#is_west_of'),literal('is west of')).
