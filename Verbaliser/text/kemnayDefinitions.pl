'<description iri="#Aberdeen">\n<title type="individual">ABERDEEN</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Aberdeenshire">\n<title type="individual">ABERDEENSHIRE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#county'),namedIndividual('#Aberdeenshire')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Scotland')),namedIndividual('#Aberdeenshire')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Alehousewells_Primary_School">\n<title type="individual">THE ALEHOUSEWELLS PRIMARY SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#primary_school'),namedIndividual('#Alehousewells_Primary_School')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Alehousewells_Primary_School')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bogbeth_Park">\n<title type="individual">BOGBETH PARK</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#playing_field'),namedIndividual('#Bogbeth_Park')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Bogbeth_Park')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Christian_denomination">\n<title type="class">CHRISTIAN DENOMINATION</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#Christian_denomination'),[namedIndividual('#The_Scottish_Episcopal_Church'),namedIndividual('#The_Roman_Catholic_Church'),namedIndividual('#The_Church_of_Scotland')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Fetternear_Estate">\n<title type="individual">FETTERNEAR ESTATE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#place_of_interest'),class('#estate')],namedIndividual('#Fetternear_Estate')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Fetternear_Estate')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Garioch">\n<title type="individual">GARIOCH</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#council_committee_area'),namedIndividual('#Garioch')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Aberdeenshire')),namedIndividual('#Garioch')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Inverurie">\n<title type="individual">INVERURIE</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion([objectHasValue(objectProperty('#is_more_populous_than'),namedIndividual('#Westhill')),objectHasValue(objectProperty('#is_more_populous_than'),namedIndividual('#Kemnay'))],namedIndividual('#Inverurie')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#John_Fyfe">\n<title type="individual">JOHN FYFE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Kemnay">\n<title type="individual">KEMNAY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#village'),namedIndividual('#Kemnay')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion([objectSomeValuesFrom(objectProperty('#is_provided_with'),class('#public_house')),objectSomeValuesFrom(objectProperty('#is_provided_with'),class('#guest_house')),objectSomeValuesFrom(objectProperty('#is_provided_with'),class('#bed-and-breakfast'))],namedIndividual('#Kemnay')).
classAssertion([objectHasValue(objectProperty('#is_west_of'),namedIndividual('#Aberdeen')),objectHasValue(objectProperty('#is_located_on'),namedIndividual('#the_River_Don')),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Garioch'))],namedIndividual('#Kemnay')).
classAssertion(dataHasValue(dataProperty('#has_approximate_population_of'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','4000')),namedIndividual('#Kemnay')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_Academy">\n<title type="individual">KEMNAY ACADEMY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#academy_school'),namedIndividual('#Kemnay_Academy')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_Bowling_Club">\n<title type="individual">THE KEMNAY BOWLING CLUB</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectIntersectionOf(class('#bowling_club'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#Kemnay_Bowling_Club')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_House">\n<title type="individual">KEMNAY HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#category-A-listed_building'),namedIndividual('#Kemnay_House')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectIntersectionOf(class('#house'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#Kemnay_House')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_Parish_Church">\n<title type="individual">THE KEMNAY PARISH CHURCH</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Kemnay_Parish_Church')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_Primary_School">\n<title type="individual">THE KEMNAY PRIMARY SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#primary_school'),namedIndividual('#Kemnay_Primary_School')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Kemnay_Primary_School')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_Quarry">\n<title type="individual">KEMNAY QUARRY</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectIntersectionOf(dataHasValue(dataProperty('#is_opened_in'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','1830')),objectHasValue(objectProperty('#is_founded_by'),namedIndividual('#John_Fyfe'))),namedIndividual('#Kemnay_Quarry')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_Roman_Catholic_Church">\n<title type="individual">THE KEMNAY ROMAN CATHOLIC CHURCH</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#Kemnay_Roman_Catholic_Church')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kemnay_Skate_Park">\n<title type="individual">THE KEMNAY SKATE PARK</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#skate_park'),namedIndividual('#Kemnay_Skate_Park')).
'</subgroup>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Bogbeth_Park')),namedIndividual('#Kemnay_Skate_Park')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kenmay_Quarry">\n<title type="individual">KENMAY QUARRY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Scotland">\n<title type="individual">SCOTLAND</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#country'),namedIndividual('#Scotland')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#St_Anne\'s_Church">\n<title type="individual">THE ST ANNE S CHURCH</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay')),namedIndividual('#St_Anne\'s_Church')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Bennachie_Lodge">\n<title type="individual">THE BENNACHIE LODGE</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectIntersectionOf(class('#public_house'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#The_Bennachie_Lodge')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Burnett_Arms_Hotel">\n<title type="individual">THE BURNETT ARMS HOTEL</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectIntersectionOf(class('#public_house'),objectHasValue(objectProperty('#is_located_in'),namedIndividual('#Kemnay'))),namedIndividual('#The_Burnett_Arms_Hotel')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Church_of_Scotland">\n<title type="individual">THE CHURCH OF SCOTLAND</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Christian_denomination'),namedIndividual('#The_Church_of_Scotland')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Forth_Railway_Bridge">\n<title type="individual">THE FORTH RAILWAY BRIDGE</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectSomeValuesFrom(objectProperty('#is_constructed_using'),objectIntersectionOf(class('#granite'),objectHasValue(objectProperty('#is_quarried_in'),namedIndividual('#Kenmay_Quarry')))),namedIndividual('#The_Forth_Railway_Bridge')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Glasgow_Cenotaph">\n<title type="individual">THE GLASGOW CENOTAPH</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectSomeValuesFrom(objectProperty('#is_constructed_using'),objectIntersectionOf(class('#granite'),objectHasValue(objectProperty('#is_quarried_in'),namedIndividual('#Kenmay_Quarry')))),namedIndividual('#The_Glasgow_Cenotaph')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Kemnay_Academy_2014_extension_plan">\n<title type="individual">THE KEMNAY ACADEMY 2014 EXTENSION PLAN</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_extending'),namedIndividual('#Kemnay_Academy')),namedIndividual('#The_Kemnay_Academy_2014_extension_plan')).
classAssertion(dataHasValue(dataProperty('#is_dated'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#integer','2014')),namedIndividual('#The_Kemnay_Academy_2014_extension_plan')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Roman_Catholic_Church">\n<title type="individual">THE ROMAN CATHOLIC CHURCH</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Christian_denomination'),namedIndividual('#The_Roman_Catholic_Church')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#The_Scottish_Episcopal_Church">\n<title type="individual">THE SCOTTISH EPISCOPAL CHURCH</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Christian_denomination'),namedIndividual('#The_Scottish_Episcopal_Church')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Westhill">\n<title type="individual">WESTHILL</title>\n<text>'.
'<subgroup id="Description">'.
classAssertion(objectHasValue(objectProperty('#is_more_populous_than'),namedIndividual('#Kemnay')),namedIndividual('#Westhill')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#academy_school">\n<title type="class">ACADEMY SCHOOL</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#academy_school'),namedIndividual('#Kemnay_Academy')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#bed-and-breakfast">\n<title type="class">BED AND BREAKFAST</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#bowling_club">\n<title type="class">BOWLING CLUB</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#category-A-listed_building">\n<title type="class">CATEGORY A LISTED BUILDING</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#category-A-listed_building'),namedIndividual('#Kemnay_House')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#council_committee_area">\n<title type="class">COUNCIL COMMITTEE AREA</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#council_committee_area'),namedIndividual('#Garioch')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#country">\n<title type="class">COUNTRY</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#country'),namedIndividual('#Scotland')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#county">\n<title type="class">COUNTY</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#county'),namedIndividual('#Aberdeenshire')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#estate">\n<title type="class">ESTATE</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#estate'),namedIndividual('#Fetternear_Estate')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#granite">\n<title type="class">GRANITE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#guest_house">\n<title type="class">GUEST HOUSE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#has_approximate_population_of">\n<title type="data property">HAS AS APPROXIMATE POPULATION OF</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#house">\n<title type="class">HOUSE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_constructed_using">\n<title type="object property">IS CONSTRUCTED USING</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_dated">\n<title type="data property">IS DATED</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_extending">\n<title type="object property">IS EXTENDING</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_founded_by">\n<title type="object property">IS FOUNDED BY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_located_in">\n<title type="object property">IS LOCATED IN</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_located_on">\n<title type="object property">IS LOCATED ON</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_more_populous_than">\n<title type="object property">IS MORE POPULOUS THAN</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_opened_in">\n<title type="data property">IS OPENED IN</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_provided_with">\n<title type="object property">IS PROVIDED WITH</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_quarried_in">\n<title type="object property">IS QUARRIED IN</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#is_west_of">\n<title type="object property">IS WEST OF</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#place_of_interest">\n<title type="class">PLACE OF INTEREST</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#place_of_interest'),namedIndividual('#Fetternear_Estate')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#playing_field">\n<title type="class">PLAYING FIELD</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#playing_field'),namedIndividual('#Bogbeth_Park')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#primary_school">\n<title type="class">PRIMARY SCHOOL</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#primary_school'),[namedIndividual('#Kemnay_Primary_School'),namedIndividual('#Alehousewells_Primary_School')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#public_house">\n<title type="class">PUBLIC HOUSE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#settlement">\n<title type="class">SETTLEMENT</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#village'),class('#town')],class('#settlement')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#skate_park">\n<title type="class">SKATE PARK</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#skate_park'),namedIndividual('#Kemnay_Skate_Park')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#the_River_Don">\n<title type="individual">THE RIVER DON</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#town">\n<title type="class">TOWN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#town'),class('#settlement')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#village">\n<title type="class">VILLAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#village'),class('#settlement')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#village'),namedIndividual('#Kemnay')).
'</subgroup>'.
'</text>\n</description>'.
