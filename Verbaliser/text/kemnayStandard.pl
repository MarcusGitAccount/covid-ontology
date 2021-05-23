declaration(class('#Christian_denomination')).
declaration(class('#academy_school')).
declaration(class('#bed-and-breakfast')).
declaration(class('#bowling_club')).
declaration(class('#category-A-listed_building')).
declaration(class('#council_committee_area')).
declaration(class('#country')).
declaration(class('#county')).
declaration(class('#estate')).
declaration(class('#granite')).
declaration(class('#guest_house')).
declaration(class('#house')).
declaration(class('#place_of_interest')).
declaration(class('#playing_field')).
declaration(class('#primary_school')).
declaration(class('#public_house')).
declaration(class('#settlement')).
declaration(class('#skate_park')).
declaration(class('#town')).
declaration(class('#village')).
declaration(dataProperty('#has_approximate_population_of')).
declaration(dataProperty('#is_dated')).
declaration(dataProperty('#is_opened_in')).
declaration(namedIndividual('#Aberdeen')).
declaration(namedIndividual('#Aberdeenshire')).
declaration(namedIndividual('#Alehousewells_Primary_School')).
declaration(namedIndividual('#Bogbeth_Park')).
declaration(namedIndividual('#Fetternear_Estate')).
declaration(namedIndividual('#Garioch')).
declaration(namedIndividual('#Inverurie')).
declaration(namedIndividual('#John_Fyfe')).
declaration(namedIndividual('#Kemnay')).
declaration(namedIndividual('#Kemnay_Academy')).
declaration(namedIndividual('#Kemnay_Bowling_Club')).
declaration(namedIndividual('#Kemnay_House')).
declaration(namedIndividual('#Kemnay_Parish_Church')).
declaration(namedIndividual('#Kemnay_Primary_School')).
declaration(namedIndividual('#Kemnay_Quarry')).
declaration(namedIndividual('#Kemnay_Roman_Catholic_Church')).
declaration(namedIndividual('#Kemnay_Skate_Park')).
declaration(namedIndividual('#Kenmay_Quarry')).
declaration(namedIndividual('#Scotland')).
declaration(namedIndividual('#St_Anne\'s_Church')).
declaration(namedIndividual('#The_Bennachie_Lodge')).
declaration(namedIndividual('#The_Burnett_Arms_Hotel')).
declaration(namedIndividual('#The_Church_of_Scotland')).
declaration(namedIndividual('#The_Forth_Railway_Bridge')).
declaration(namedIndividual('#The_Glasgow_Cenotaph')).
declaration(namedIndividual('#The_Kemnay_Academy_2014_extension_plan')).
declaration(namedIndividual('#The_Roman_Catholic_Church')).
declaration(namedIndividual('#The_Scottish_Episcopal_Church')).
declaration(namedIndividual('#Westhill')).
declaration(namedIndividual('#the_River_Don')).
declaration(objectProperty('#is_constructed_using')).
declaration(objectProperty('#is_extending')).
declaration(objectProperty('#is_founded_by')).
declaration(objectProperty('#is_located_in')).
declaration(objectProperty('#is_located_on')).
declaration(objectProperty('#is_more_populous_than')).
declaration(objectProperty('#is_provided_with')).
declaration(objectProperty('#is_quarried_in')).
declaration(objectProperty('#is_west_of')).
classAssertion(class('#Christian_denomination'),namedIndividual('#The_Church_of_Scotland')).
classAssertion(class('#Christian_denomination'),namedIndividual('#The_Roman_Catholic_Church')).
classAssertion(class('#Christian_denomination'),namedIndividual('#The_Scottish_Episcopal_Church')).
classAssertion(class('#academy_school'),namedIndividual('#Kemnay_Academy')).
classAssertion(class('#category-A-listed_building'),namedIndividual('#Kemnay_House')).
classAssertion(class('#council_committee_area'),namedIndividual('#Garioch')).
classAssertion(class('#country'),namedIndividual('#Scotland')).
classAssertion(class('#county'),namedIndividual('#Aberdeenshire')).
classAssertion(class('#estate'),namedIndividual('#Fetternear_Estate')).
classAssertion(class('#place_of_interest'),namedIndividual('#Fetternear_Estate')).
classAssertion(class('#playing_field'),namedIndividual('#Bogbeth_Park')).
classAssertion(class('#primary_school'),namedIndividual('#Alehousewells_Primary_School')).
classAssertion(class('#primary_school'),namedIndividual('#Kemnay_Primary_School')).
classAssertion(class('#skate_park'),namedIndividual('#Kemnay_Skate_Park')).
classAssertion(class('#village'),namedIndividual('#Kemnay')).
classAssertion(dataHasValue(dataProperty('#has_approximate_population_of'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','4000')),namedIndividual('#Kemnay')).
classAssertion(dataHasValue(dataProperty('#is_dated'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','2014')),namedIndividual('#The_Kemnay_Academy_2014_extension_plan')).
classAssertion(objectHasValue(objectProperty('#is_extending'),namedIndividual('#Kemnay_Academy')),namedIndividual('#The_Kemnay_Academy_2014_extension_plan')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Aberdeenshire')),namedIndividual('#Garioch')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Bogbeth_Park')),namedIndividual('#Kemnay_Skate_Park')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Garioch')),namedIndividual('#Kemnay')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Alehousewells_Primary_School')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Bogbeth_Park')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Fetternear_Estate')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Kemnay_Parish_Church')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Kemnay_Primary_School')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Kemnay_Roman_Catholic_Church')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#St_Anne\'s_Church')).
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Scotland')),namedIndividual('#Aberdeenshire')).
classAssertion(objectHasValue(objectProperty('#is_located_on'),namedIndividual('#the_River_Don')),namedIndividual('#Kemnay')).
classAssertion(objectHasValue(objectProperty('#is_more_populous_than'),namedIndividual('#Kemnay')),namedIndividual('#Inverurie')).
classAssertion(objectHasValue(objectProperty('#is_more_populous_than'),namedIndividual('#Kemnay')),namedIndividual('#Westhill')).
classAssertion(objectHasValue(objectProperty('#is_more_populous_than'),namedIndividual('#Westhill')),namedIndividual('#Inverurie')).
classAssertion(objectHasValue(objectProperty('#is_west_of'),namedIndividual('#Aberdeen')),namedIndividual('#Kemnay')).
classAssertion(objectIntersectionOf(class('#bowling_club'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#Kemnay_Bowling_Club')).
classAssertion(objectIntersectionOf(class('#house'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#Kemnay_House')).
classAssertion(objectIntersectionOf(class('#public_house'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#The_Bennachie_Lodge')).
classAssertion(objectIntersectionOf(class('#public_house'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#The_Burnett_Arms_Hotel')).
classAssertion(objectIntersectionOf(dataHasValue(dataProperty('#is_opened_in'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','1830')),objectHasValue(objectProperty('#is_founded_by'),namedIndividual('#John_Fyfe'))),namedIndividual('#Kemnay_Quarry')).
classAssertion(objectSomeValuesFrom(objectProperty('#is_constructed_using'),objectIntersectionOf(class('#granite'),objectHasValue(objectProperty('#is_quarried_in'),namedIndividual('#Kenmay_Quarry')))),namedIndividual('#The_Forth_Railway_Bridge')).
classAssertion(objectSomeValuesFrom(objectProperty('#is_constructed_using'),objectIntersectionOf(class('#granite'),objectHasValue(objectProperty('#is_quarried_in'),namedIndividual('#Kenmay_Quarry')))),namedIndividual('#The_Glasgow_Cenotaph')).
classAssertion(objectSomeValuesFrom(objectProperty('#is_provided_with'),class('#bed-and-breakfast')),namedIndividual('#Kemnay')).
classAssertion(objectSomeValuesFrom(objectProperty('#is_provided_with'),class('#guest_house')),namedIndividual('#Kemnay')).
classAssertion(objectSomeValuesFrom(objectProperty('#is_provided_with'),class('#public_house')),namedIndividual('#Kemnay')).
subClassOf(class('#town'),class('#settlement')).
subClassOf(class('#village'),class('#settlement')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#Christian_denomination'),literal('Christian denomination')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#academy_school'),literal('academy school')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#bed-and-breakfast'),literal('bed-and-breakfast')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#bowling_club'),literal('bowling club')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#category-A-listed_building'),literal('category-A-listed building')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#council_committee_area'),literal('council committee area')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#country'),literal(country)).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#county'),literal(county)).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#estate'),literal(estate)).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#granite'),literal(granite)).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#guest_house'),literal('guest house')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#house'),literal(house)).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#place_of_interest'),literal('place of interest')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#playing_field'),literal('playing field')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#primary_school'),literal('primary school')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#public_house'),literal('public house')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#settlement'),literal(settlement)).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#skate_park'),literal('skate park')).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#town'),literal(town)).
annotationAssertion(annotationProperty('http://www.swatproject.org/class'),iri('#village'),literal(village)).
annotationAssertion(annotationProperty('http://www.swatproject.org/dataProperty'),iri('#has_approximate_population_of'),literal('has approximate population of')).
annotationAssertion(annotationProperty('http://www.swatproject.org/dataProperty'),iri('#is_dated'),literal('is dated')).
annotationAssertion(annotationProperty('http://www.swatproject.org/dataProperty'),iri('#is_opened_in'),literal('is opened in')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Aberdeen'),literal('Aberdeen')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Aberdeenshire'),literal('Aberdeenshire')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Alehousewells_Primary_School'),literal('Alehousewells Primary School')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Bogbeth_Park'),literal('Bogbeth Park')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Fetternear_Estate'),literal('Fetternear Estate')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Garioch'),literal('Garioch')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Inverurie'),literal('Inverurie')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#John_Fyfe'),literal('John Fyfe')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay'),literal('Kemnay')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Academy'),literal('Kemnay Academy')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Bowling_Club'),literal('Kemnay Bowling Club')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_House'),literal('Kemnay House')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Parish_Church'),literal('Kemnay Parish Church')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Primary_School'),literal('Kemnay Primary School')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Quarry'),literal('Kemnay Quarry')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Roman_Catholic_Church'),literal('Kemnay Roman Catholic Church')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kemnay_Skate_Park'),literal('Kemnay Skate Park')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Kenmay_Quarry'),literal('Kenmay Quarry')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Scotland'),literal('Scotland')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#St_Anne\'s_Church'),literal('St Anne\'s Church')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Bennachie_Lodge'),literal('The Bennachie Lodge')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Burnett_Arms_Hotel'),literal('The Burnett Arms Hotel')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Church_of_Scotland'),literal('The Church of Scotland')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Forth_Railway_Bridge'),literal('The Forth Railway Bridge')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Glasgow_Cenotaph'),literal('The Glasgow Cenotaph')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Kemnay_Academy_2014_extension_plan'),literal('The Kemnay Academy 2014 extension plan')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Roman_Catholic_Church'),literal('The Roman Catholic Church')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#The_Scottish_Episcopal_Church'),literal('The Scottish Episcopal Church')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#Westhill'),literal('Westhill')).
annotationAssertion(annotationProperty('http://www.swatproject.org/namedIndividual'),iri('#the_River_Don'),literal('the River Don')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_constructed_using'),literal('is constructed using')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_extending'),literal('is extending')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_founded_by'),literal('is founded by')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_located_in'),literal('is located in')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_located_on'),literal('is located on')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_more_populous_than'),literal('is more populous than')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_provided_with'),literal('is provided with')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_quarried_in'),literal('is quarried in')).
annotationAssertion(annotationProperty('http://www.swatproject.org/objectProperty'),iri('#is_west_of'),literal('is west of')).
