'<description iri="#Abattoir">\n<title type="class">ABATTOIR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Abattoir'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Abattoir'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Slaughter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Livestock'))))))).
subClassOf(class('#Abattoir'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Slaughter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Livestock'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Abbey">\n<title type="class">ABBEY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Abbey'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Abbey'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(objectUnionOf(class('#Monk'),class('#Nun')),objectComplementOf(objectIntersectionOf(class('#Monk'),class('#Nun')))))))).
subClassOf(class('#Abbey'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(objectUnionOf(class('#Monk'),class('#Nun')),objectComplementOf(objectIntersectionOf(class('#Monk'),class('#Nun')))))))))).
subClassOf(class('#Abbey'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
subClassOf(class('#Abbey'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#AbbeyChurch'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AbbeyChurch">\n<title type="class">ABBEY CHURCH</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#AbbeyChurch'),objectIntersectionOf(class('#Church'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Abbey')))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#AbbeyChurch'),class('#Church')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Academy">\n<title type="class">ACADEMY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Academy'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Academy'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))))).
subClassOf(class('#Academy'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Accommodation">\n<title type="class">ACCOMMODATION</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Address">\n<title type="class">ADDRESS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Administration">\n<title type="class">ADMINISTRATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Administration'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AirForceBase">\n<title type="class">AIR FORCE BASE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AirForceBase'),class('#MilitaryBase')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#AirForceBase'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Airfield'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AirTerminalBuilding">\n<title type="class">AIR TERMINAL BUILDING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AirTerminalBuilding'),class('#TerminalBuilding')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#AirTerminalBuilding'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),objectUnionOf(class('#Airfield'),class('#Airport')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Aircraft">\n<title type="class">AIRCRAFT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Aircraft'),class('#Vehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AircraftHanger">\n<title type="class">AIRCRAFT HANGAR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AircraftHanger'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#AircraftHanger'),[objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),objectUnionOf(class('#Airfield'),class('#Airport'))),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),objectUnionOf(class('#Airfield'),class('#Airport')))]).
subClassOf(class('#AircraftHanger'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Aircraft'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Airfield">\n<title type="class">AIRFIELD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Airfield'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Airfield'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Aircraft'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Airport">\n<title type="class">AIRPORT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Airport'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Airport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Aircraft'))))).
subClassOf(class('#Airport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#AirTerminalBuilding'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Allotment">\n<title type="class">ALLOTMENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Allotment'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Allotment'),objectExactCardinality('1',objectProperty('#isOwnedBy'),class('#LocalAuthority'))).
subClassOf(class('#Allotment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Growing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),objectIntersectionOf(objectUnionOf(class('#Fruit'),class('#Vegetable')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),class('#PersonalConsumption'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Almshouse">\n<title type="class">ALMSHOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Almshouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Almshouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElderlyPerson'))))))).
subClassOf(class('#Almshouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElderlyPerson'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Ambulance">\n<title type="class">AMBULANCE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Ambulance'),class('#MotorVehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AmbulanceStation">\n<title type="class">AMBULANCE STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AmbulanceStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#AmbulanceStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ambulance'))))))).
subClassOf(class('#AmbulanceStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ambulance'))))).
subClassOf(class('#AmbulanceStation'),objectSomeValuesFrom(objectProperty('#isOperatedBy'),class('#EmergencyServiceOrganisation'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Analysis">\n<title type="class">ANALYSIS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Analysis'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Animal">\n<title type="class">ANIMAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Animal'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Livestock'),class('#Horse'),class('#Fish'),numberOfElements('7')],class('#Animal')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AnimalFeed">\n<title type="class">ANIMAL FEED</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#AnimalHouse">\n<title type="class">ANIMAL HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AnimalHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#AnimalHouse'),[objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Zoo')),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),class('#Zoo'))]).
subClassOf(class('#AnimalHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Animal'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Aquarium">\n<title type="class">AQUARIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Aquarium'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Aquarium'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#AquaticAnimal')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Entertainment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tourist'))))]).
subClassOf(class('#Aquarium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#AquaticAnimal'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AquaticAnimal">\n<title type="class">AQUATIC ANIMAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AquaticAnimal'),class('#Animal')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Archbishop">\n<title type="class">ARCHBISHOP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Archbishop'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Aristocrat">\n<title type="class">ARISTOCRAT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Aristocrat'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ArmyReservist">\n<title type="class">ARMY RESERVIST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ArmyReservist'),class('#MilitaryPersonnel')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Arsenal">\n<title type="class">ARSENAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Arsenal'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Arsenal'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ordnance'))))))).
subClassOf(class('#Arsenal'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ordnance'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Art">\n<title type="class">ART</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ArtGallery">\n<title type="class">ART GALLERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ArtGallery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ArtGallery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Art'))))))).
subClassOf(class('#ArtGallery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Art'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Artefact">\n<title type="class">ARTEFACT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Arts">\n<title type="class">ARTS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ArtsCentre">\n<title type="class">ARTS CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ArtsCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ArtsCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(objectUnionOf(class('#Exhibition'),class('#Performance')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Arts'))))).
subClassOf(class('#ArtsCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(objectUnionOf(class('#Exhibition'),class('#Performance')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Arts'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AstronomicalResearch">\n<title type="class">ASTRONOMICAL RESEARCH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AstronomicalResearch'),class('#Research')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AuctionHouse">\n<title type="class">AUCTION HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#AuctionHouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#AuctionHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Goods'),class('#Livestock')))))).
subClassOf(class('#AuctionHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Goods'),class('#Livestock')))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Aviary">\n<title type="class">AVIARY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Aviary'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Aviary'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bird'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bakery">\n<title type="class">BAKERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bakery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Bakery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Baking'))))).
subClassOf(class('#Bakery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Baking'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Baking">\n<title type="class">BAKING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Baking'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bank">\n<title type="class">BANK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bank'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Bank'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#FinancialService'))))))).
subClassOf(class('#Bank'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#FinancialService'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Barn">\n<title type="class">BARN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Barn'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Barn'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Animal'),class('#AnimalFeed'),class('#Crop'),class('#FarmVehicle')))))).
subClassOf(class('#Barn'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#FarmLand'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#TitheBarn'),class('#Barn')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BarrackBlock">\n<title type="class">BARRACK BLOCK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BarrackBlock'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BarrackBlock'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Barracks')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),class('#Barracks'))]).
subClassOf(class('#BarrackBlock'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MilitaryPersonnel'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Barracks">\n<title type="class">BARRACKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Barracks'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Barracks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MilitaryPersonnel'))))))).
subClassOf(class('#Barracks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MilitaryPersonnel'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Base">\n<title type="class">BASE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Base'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bather">\n<title type="class">BATHER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bather'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Beach">\n<title type="class">BEACH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Beach'),class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BeachEquipment">\n<title type="class">BEACH EQUIPMENT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#BeachHut">\n<title type="class">BEACH HUT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BeachHut'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BeachHut'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Recreation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),class('#Bather'))))).
subClassOf(class('#BeachHut'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Beach'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BedAndBreakfast">\n<title type="class">BED AND BREAKFAST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BedAndBreakfast'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BedAndBreakfast'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))))).
subClassOf(class('#BedAndBreakfast'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Beer">\n<title type="class">BEER</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Bell">\n<title type="class">BELL</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#BellHouse">\n<title type="class">BELL HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BellHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BellHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bell'))))).
subClassOf(class('#BellHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Church'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Berthing">\n<title type="class">BERTHING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Berthing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bethel">\n<title type="class">BETHAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bethel'),class('#Church')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Bethel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Seaman'))))))).
subClassOf(class('#Bethel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Seaman'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bethesda">\n<title type="class">BETHESDA</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bethesda'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Bethesda'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Bethesda'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bicycle">\n<title type="class">BICYCLE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bicycle'),class('#Vehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bird">\n<title type="class">BIRD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bird'),class('#Animal')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Swan'),class('#Pigeon'),class('#GameBird'),numberOfElements('5')],class('#Bird')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bishop">\n<title type="class">BISHOP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bishop'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BlockOfFlats">\n<title type="class">BLOCK OF FLATS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BlockOfFlats'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BlockOfFlats'),objectMinCardinality('2',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Flat'))).
subClassOf(class('#BlockOfFlats'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Boat">\n<title type="class">BOAT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Boat'),class('#Vehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BoatHouse">\n<title type="class">BOAT HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BoatHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BoatHouse'),objectUnionOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),objectUnionOf(class('#Lake'),class('#River'))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),objectUnionOf(class('#Lake'),class('#River'))))).
subClassOf(class('#BoatHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Boat'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bomb">\n<title type="class">BOMB</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#BombShelter">\n<title type="class">BOMB SHELTER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BombShelter'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BombShelter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Protection'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#from'),class('#Bomb'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bothy">\n<title type="class">BOTHY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bothy'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Bothy'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),objectUnionOf(class('#Moorland'),class('#MountainousArea')))).
subClassOf(class('#Bothy'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Climber'),class('#Hiker')))))).
subClassOf(class('#Bothy'),objectHasValue(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),namedIndividual('#scotland'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BowlingAlley">\n<title type="class">BOWLING ALLEY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BowlingAlley'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BowlingAlley'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#TenPinBowling'))))))).
subClassOf(class('#BowlingAlley'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#TenPinBowling'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BowlingClub">\n<title type="class">BOWLING CLUB</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BowlingClub'),class('#Club')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BowlingClub'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bowls'))))).
subClassOf(class('#BowlingClub'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bowls">\n<title type="class">BOWLS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bowls'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Brewery">\n<title type="class">BREWERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Brewery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Brewery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Brewing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Beer'))))))).
subClassOf(class('#Brewery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Brewing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Beer'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Brewing">\n<title type="class">BREWING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Brewing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bricks">\n<title type="class">BRICKS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Brickworks">\n<title type="class">BRICKWORKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Brickworks'),class('#Works')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Brickworks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Manufacturing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bricks'))))))).
subClassOf(class('#Brickworks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Manufacturing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bricks'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bridge">\n<title type="class">BRIDGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bridge'),class('#Structure')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#SwingBridge'),class('#Bridge')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Broadcasting">\n<title type="class">BROADCASTING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Broadcasting'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Building">\n<title type="class">BUILDING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Building'),class('#Structure')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Building'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Purpose')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Wall')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Roof'))]).
subClassOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Shelter'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#WinterGarden_Building'),class('#Windmill'),class('#ValveHouse'),numberOfElements('57')],class('#Building')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Burial">\n<title type="class">BURIAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Burial'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Burning">\n<title type="class">BURNING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Burning'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bus">\n<title type="class">BUS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Bus'),class('#MotorVehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BusDepot">\n<title type="class">BUS DEPOT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BusDepot'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BusDepot'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bus'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BusStation">\n<title type="class">BUS STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#BusStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#BusStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bus'))))))).
subClassOf(class('#BusStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bus'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cadet">\n<title type="class">CADET</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cadet'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CadetCentre">\n<title type="class">CADET CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CadetCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CadetCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Training'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Cadet'))))))).
subClassOf(class('#CadetCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Training'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Cadet'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CanalFeeder">\n<title type="class">CANAL FEEDER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CanalFeeder'),class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CannedProduct">\n<title type="class">CANNED PRODUCT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Cannery">\n<title type="class">CANNERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cannery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Cannery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Manufacturing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#CannedProduct'))))))).
subClassOf(class('#Cannery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Manufacturing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#CannedProduct'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Capel">\n<title type="class">CAPEL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Capel'),objectIntersectionOf(class('#Chapel'),objectHasValue(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),namedIndividual('#wales')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Car">\n<title type="class">CAR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Car'),class('#MotorVehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CarFactory">\n<title type="class">CAR FACTORY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CarFactory'),class('#Factory')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CarFactory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Manufacturing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MotorVehicle'))))))).
subClassOf(class('#CarFactory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Manufacturing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MotorVehicle'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CarPark">\n<title type="class">CAR PARK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CarPark'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CarPark'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Parking'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Car'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#MultiStoreyCarPark'),class('#CarPark')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CarShowroom">\n<title type="class">CAR SHOWROOM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CarShowroom'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CarShowroom'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Sale'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Car'))))))).
subClassOf(class('#CarShowroom'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Sale'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Car'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Care">\n<title type="class">CARE</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#VeterinaryCare'),class('#HealthCare')],class('#Care')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CarriageShed">\n<title type="class">CARRIAGE SHED</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CarriageShed'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CarriageShed'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RailwayCarriage'))))).
subClassOf(class('#CarriageShed'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Railway'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Castle">\n<title type="class">CASTLE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Castle'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Castle'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#DefensiveWall')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building')),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),class('#Defence'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cat">\n<title type="class">CAT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cat'),class('#Animal')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CateringFacility">\n<title type="class">CATERING FACILITY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Cathedral">\n<title type="class">CATHERDRAL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Cathedral'),objectIntersectionOf(class('#Church'),objectSomeValuesFrom(objectProperty('#isLedBy'),class('#Bishop')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cattery">\n<title type="class">CATTERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cattery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Cattery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Cat'))))))).
subClassOf(class('#Cattery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Cat'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cattle">\n<title type="class">CATTLE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cattle'),class('#Livestock')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CattleMarket">\n<title type="class">CATTLE MARKET</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CattleMarket'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CattleMarket'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Cattle'))))))).
subClassOf(class('#CattleMarket'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Cattle'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cemetery">\n<title type="class">CEMETERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cemetery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Cemetery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Burial'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Corpse'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CentralGovernment">\n<title type="class">CENTRAL GOVERNMENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CentralGovernment'),class('#GovernmentOrganisation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Changing">\n<title type="class">CHANGING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Changing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChangingRoom">\n<title type="class">CHANGING ROOM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ChangingRoom'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ChangingRoom'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#SportsGround')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),class('#SportsGround'))]).
subClassOf(class('#ChangingRoom'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Changing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Clothes'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Chapel">\n<title type="class">CHAPEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Chapel'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Chapel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Chapel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChapelOfRest">\n<title type="class">CHAPEL OF REST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ChapelOfRest'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ChapelOfRest'),[objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),objectUnionOf(class('#Crematorium'),class('#FuneralParlour'),class('#Mortuary'))),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),objectUnionOf(class('#Crematorium'),class('#FuneralParlour'),class('#Mortuary')))]).
subClassOf(class('#ChapelOfRest'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CharitableActivity">\n<title type="class">CHARITABLE ACTIVITY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CharitableActivity'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Chemical">\n<title type="class">CHEMICAL</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ChemicalWorks">\n<title type="class">CHEMICAL WORKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ChemicalWorks'),class('#Works')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ChemicalWorks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#IndustrialProcessing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Chemical'))))))).
subClassOf(class('#ChemicalWorks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#IndustrialProcessing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Chemical'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Child">\n<title type="class">CHILD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Child'),class('#Person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Infant'),class('#Child')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChildrensHome">\n<title type="class">CHILDREN\'S HOME</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ChildrensHome'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ChildrensHome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Child'))))))).
subClassOf(class('#ChildrensHome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Child'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Christian">\n<title type="class">CHRISTIAN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Christian'),class('#Person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Vicar'),class('#Rector'),class('#Prioress'),numberOfElements('10')],class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Church">\n<title type="class">CHURCH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Church'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Church'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Church'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Kirk'),class('#Bethel'),class('#AbbeyChurch')],class('#Church')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cinema">\n<title type="class">CINEMA</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cinema'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Cinema'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Showing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Film'))))))).
subClassOf(class('#Cinema'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Showing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Film'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#City">\n<title type="class">CITY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#City'),class('#Settlement')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CityHall">\n<title type="class">CITY HALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CityHall'),class('#CouncilOffice')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CityHall'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#City'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CivicCentre">\n<title type="class">CIVIC CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CivicCentre'),class('#CouncilOffice')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CivicCentre'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#City'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Climber">\n<title type="class">CLIMBER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Climber'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ClimbingHut">\n<title type="class">CLIMBING HUT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ClimbingHut'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ClimbingHut'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Climber'))))).
subClassOf(class('#ClimbingHut'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#MountainousArea'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Clinic">\n<title type="class">CLINIC</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Clinic'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Clinic'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare'))))))).
subClassOf(class('#Clinic'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Clothes">\n<title type="class">CLOTHES</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Club">\n<title type="class">CLUB</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Club'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Club'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Recreation'))))).
subClassOf(class('#Club'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Recreation'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#TennisClub'),class('#CountryClub'),class('#BowlingClub')],class('#Club')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ClubHouse">\n<title type="class">CLUB HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ClubHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ClubHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Recreation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),class('#ClubMember'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#CricketPavilion'),class('#ClubHouse')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ClubMember">\n<title type="class">CLUB MEMBER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ClubMember'),class('#Person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#CricketClubMember'),class('#ClubMember')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Coach">\n<title type="class">COACH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Coach'),class('#MotorVehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CoachStation">\n<title type="class">COACH STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CoachStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CoachStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Coach'))))))).
subClassOf(class('#CoachStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Coach'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Coast">\n<title type="class">COAST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Coast'),class('#Landform')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Coastguard">\n<title type="class">COASTGUARD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Coastguard'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CoastguardLookout">\n<title type="class">COASTGUARD LOOKOUT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CoastguardLookout'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CoastguardLookout'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Observation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Coast'))))).
subClassOf(class('#CoastguardLookout'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CoastguardStation">\n<title type="class">COASTGUARD STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CoastguardStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CoastguardStation'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea')),objectSomeValuesFrom(objectProperty('#isOperatedBy'),class('#EmergencyServiceOrganisation'))]).
subClassOf(class('#CoastguardStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Coastguard'))))))).
subClassOf(class('#CoastguardStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Coastguard'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ColdStorage">\n<title type="class">COLD STORAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ColdStorage'),class('#Storage')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ColdStore">\n<title type="class">COLD STORE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ColdStore'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ColdStore'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#ColdStorage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Produce'))))))).
subClassOf(class('#ColdStore'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#ColdStorage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Produce'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Collection">\n<title type="class">COLLECTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Collection'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#College_Secondary">\n<title type="class">COLLEGE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#College_Secondary'),objectIntersectionOf(class('#School'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#College_Secondary_Student')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#College_Secondary_Student')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#College_Secondary_Student">\n<title type="class">COLLEGE (SECONDARY) STUDENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#College_Secondary_Student'),class('#Student')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#College_University">\n<title type="class">COLLEGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#College_University'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#College_University'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#UniversityStudent'))))))).
subClassOf(class('#College_University'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#UniversityStudent'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CommunityCentre">\n<title type="class">COMMUNITY CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CommunityCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CommunityCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Meeting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#CommunityGroup'))))))).
subClassOf(class('#CommunityCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Meeting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#CommunityGroup'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CommunityGroup">\n<title type="class">COMMUNITY GROUP</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ComprehensiveSchool">\n<title type="class">COMPREHENSIVE SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ComprehensiveSchool'),class('#SecondarySchool')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Concert">\n<title type="class">CONCERT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Concert'),class('#Performance')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ConcertHall">\n<title type="class">CONCERT HALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ConcertHall'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ConcertHall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Concert'))))))).
subClassOf(class('#ConcertHall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Concert'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Conference">\n<title type="class">CONFERENCE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ConferenceCentre">\n<title type="class">CONFERENCE CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ConferenceCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ConferenceCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Conference'))))))).
subClassOf(class('#ConferenceCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Conference'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Construction">\n<title type="class">CONSTRUCTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Construction'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Consumption">\n<title type="class">CONSUMPTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Consumption'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ContainerPort">\n<title type="class">CONTAINER PORT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ContainerPort'),class('#Docks')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ContainerPort'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Berthing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ContainerShip'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ContainerShip">\n<title type="class">CONTAINER SHIP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ContainerShip'),class('#Ship')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Control">\n<title type="class">CONTROL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Control'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ControlTower">\n<title type="class">CONTROL TOWER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ControlTower'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ControlTower'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),objectUnionOf(class('#Airport'),class('#Drawbridge'),class('#SwingBridge')))).
subClassOf(class('#ControlTower'),objectUnionOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Airport')),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),objectUnionOf(class('#Drawbridge'),class('#SwingBridge'))))).
subClassOf(class('#ControlTower'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Control'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Aircraft'),class('#Drawbridge'),class('#SwingBridge')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Convalescence">\n<title type="class">CONVALESCENCE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Convalescence'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ConvalescentHome">\n<title type="class">CONVALESCENT HOME</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ConvalescentHome'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ConvalescentHome'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Convalescence'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient'))))))]).
subClassOf(class('#ConvalescentHome'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Convalescence'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient'))))]).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Sanatorium'),class('#ConvalescentHome')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Convent">\n<title type="class">CONVENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Convent'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Convent'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Nun'))))))]).
subClassOf(class('#Convent'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Nun'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Corpse">\n<title type="class">CORPSE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#CouncilEstate">\n<title type="class">COUNCIL ESTATE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#CouncilEstate'),objectIntersectionOf(class('#HousingEstate'),objectExactCardinality('1',objectProperty('#isOwnedBy'),class('#LocalAuthority')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CouncilOffice">\n<title type="class">COUNCIL OFFICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CouncilOffice'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CouncilOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#LocalAuthority'))))).
subClassOf(class('#CouncilOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#LocalAuthority'))))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#TownHall'),class('#ShireHall'),class('#CivicCentre'),numberOfElements('4')],class('#CouncilOffice')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Country">\n<title type="class">COUNTRY</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#Country'),[namedIndividual('#wales'),namedIndividual('#scotland')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CountryClub">\n<title type="class">COUNTRY CLUB</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CountryClub'),class('#Club')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CountryClub'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#RuralArea'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#County">\n<title type="class">COUNTY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#CraftActivity">\n<title type="class">CRAFT ACTIVITY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CraftActivity'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cremation">\n<title type="class">CREMATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cremation'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Crematorium">\n<title type="class">CREMATORIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Crematorium'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Crematorium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Cremation'))))).
subClassOf(class('#Crematorium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Cremation'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cricket">\n<title type="class">CRICKET</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Cricket'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CricketClubMember">\n<title type="class">CRICKET CLUB MEMBER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CricketClubMember'),class('#ClubMember')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CricketGround">\n<title type="class">CRICKET GROUND</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CricketGround'),class('#SportsGround')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CricketGround'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Cricket'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CricketPavilion">\n<title type="class">CRICKET PAVILION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CricketPavilion'),class('#ClubHouse')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CricketPavilion'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Recreation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#CricketClubMember'))))).
subClassOf(class('#CricketPavilion'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#CricketGround'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Crop">\n<title type="class">CROP</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#CrownCourt">\n<title type="class">CROWN COURT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CrownCourt'),class('#LawCourt')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CustomsHouse">\n<title type="class">CUSTOMS HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CustomsHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CustomsHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Inspection'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CustomsShed">\n<title type="class">CUSTOMS SHED</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CustomsShed'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CustomsShed'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),objectUnionOf(class('#Airport'),class('#Docks')))).
subClassOf(class('#CustomsShed'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Inspection'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CycleShed">\n<title type="class">CYCLE SHED</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#CycleShed'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CycleShed'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bicycle'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DIYSuperstore">\n<title type="class">DIY SUPERSTORE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#DIYSuperstore'),class('#Superstore')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#DIYSuperstore'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Hardware'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dairy">\n<title type="class">DAIRY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dairy'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Dairy'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Processing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Milk'))))))).
subClassOf(class('#Dairy'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Processing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Milk'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dam">\n<title type="class">DAM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dam'),class('#Structure')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DayCentre">\n<title type="class">DAY CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#DayCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#DayCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Care')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#VulnerablePerson'))))))).
subClassOf(class('#DayCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Care'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#VulnerablePerson'))))))).
subClassOf(class('#DayCentre'),objectAllValuesFrom(objectProperty('#operatesDuring'),class('#DayTime'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DayTime">\n<title type="class">DAY TIME</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Dean">\n<title type="class">DEAN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dean'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Deanery">\n<title type="class">DEANERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Deanery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Deanery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Dean'))))))).
subClassOf(class('#Deanery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Dean'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Defence">\n<title type="class">DEFENCE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Defence'),class('#MilitaryActivity')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DefensiveWall">\n<title type="class">DEFENSIVE WALL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#DefensiveWall'),objectIntersectionOf(class('#Wall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Defence')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DeliveryOffice">\n<title type="class">DELIVERY OFFICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#DeliveryOffice'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#DeliveryOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))))).
subClassOf(class('#DeliveryOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DetachedHouse">\n<title type="class">DETACHED HOUSE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#DetachedHouse'),objectIntersectionOf(class('#House'),objectComplementOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/NetworkRelations/v0.2/NetworkRelations.owl#isConnectedTo'),class('#Building'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Detention">\n<title type="class">DETENTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Detention'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dispatch">\n<title type="class">DISPATCH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dispatch'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Distillery">\n<title type="class">DISTILLERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Distillery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Distillery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Distilling'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Spirit'))))))).
subClassOf(class('#Distillery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Distilling'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Spirit'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Distilling">\n<title type="class">DISTILLING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Distilling'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Distribution">\n<title type="class">DISTRIBUTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Distribution'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dock">\n<title type="class">DOCK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dock'),class('#Structure')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Dock'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(objectUnionOf(class('#Construction'),class('#Repair')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ship'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Docks">\n<title type="class">DOCKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Docks'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Docks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),objectUnionOf(class('#River'),class('#Sea')))))).
subClassOf(class('#Docks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Berthing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ship'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#FerryPort'),class('#ContainerPort')],class('#Docks')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dockyard">\n<title type="class">DOCKYARD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dockyard'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Dockyard'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Docks')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Dock'))]).
subClassOf(class('#Dockyard'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(objectUnionOf(class('#Construction'),class('#Repair')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ship'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dog">\n<title type="class">DOG</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dog'),class('#Animal')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Greyhound'),class('#Dog')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dove">\n<title type="class">DOVE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dove'),class('#Bird')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dovecote">\n<title type="class">DOVECOTE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Dovecote'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Dovecote'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Dove'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Drainage">\n<title type="class">DRAINAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Drainage'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Drawbridge">\n<title type="class">DRAWBRIDGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Drawbridge'),class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Drying">\n<title type="class">DRYING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Drying'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Ebenezer">\n<title type="class">EBENEZER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Ebenezer'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Ebenezer'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Ebenezer'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Education">\n<title type="class">EDUCATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Education'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Egg">\n<title type="class">EGG</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ElderlyPerson">\n<title type="class">ELDERLY PERSON</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ElderlyPerson'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Electricity">\n<title type="class">ELECTRICITY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ElectricitySubStation">\n<title type="class">ELECTRICITY SUB-STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ElectricitySubStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ElectricitySubStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Supply'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Electricity'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ElectronicCommunications">\n<title type="class">ELECTRONIC COMMUNICATIONS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#EmergencyServiceOrganisation">\n<title type="class">EMERGENCY SERVICE ORGANISATION</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#EmploymentService">\n<title type="class">EMPLOYMENT SERVICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#EmploymentService'),class('#Service')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#EndTerraceHouse">\n<title type="class">END TERRACE HOUSE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#EndTerraceHouse'),objectIntersectionOf(class('#House'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/NetworkRelations/v0.2/NetworkRelations.owl#isConnectedTo'),class('#TerraceHouse')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#EngineShed">\n<title type="class">ENGINE SHED</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#EngineShed'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#EngineShed'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RailwayEngine'))))).
subClassOf(class('#EngineShed'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Railway'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Entertainment">\n<title type="class">ENTERTAINMENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Entertainment'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Entombment">\n<title type="class">ENTOMBMENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Entombment'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#EquestrianCentre">\n<title type="class">EQUESTRIAN CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#EquestrianCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#EquestrianCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(objectIntersectionOf(class('#Riding'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Horse'))),objectIntersectionOf(class('#Teaching'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Riding')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Exercising">\n<title type="class">EXERCISING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Exercising'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Exhibition">\n<title type="class">EXHIBITION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Exhibition'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ExhibitionCentre">\n<title type="class">EXHIBITION CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ExhibitionCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ExhibitionCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Exhibition'))))))).
subClassOf(class('#ExhibitionCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Exhibition'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ExoticPlant">\n<title type="class">EXOTIC PLANT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Factory">\n<title type="class">FACTORY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Factory'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Factory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Manufacturing'))))).
subClassOf(class('#Factory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Manufacturing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#CarFactory'),class('#Factory')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Farm">\n<title type="class">FARM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Farm'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Farm'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(objectIntersectionOf(class('#Farming'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Animal'))),objectIntersectionOf(class('#Growing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Crop')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FarmHouse">\n<title type="class">FARM HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FarmHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FarmHouse'),[objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Farm')),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),class('#Farm'))]).
subClassOf(class('#FarmHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FarmLand">\n<title type="class">FARM LAND</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#FarmVehicle">\n<title type="class">FARM VEHICLE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FarmVehicle'),class('#Vehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Farming">\n<title type="class">FARMING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Farming'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Ferry">\n<title type="class">FERRY</title>\n<text>'.
'<subgroup id="Description">'.
subClassOf(class('#Ferry'),objectIntersectionOf(objectUnionOf(class('#Boat'),class('#Ship')),objectComplementOf(objectIntersectionOf(class('#Boat'),class('#Ship'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FerryPort">\n<title type="class">FERRY PORT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FerryPort'),class('#Docks')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FerryPort'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Berthing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ferry'))))).
subClassOf(class('#FerryPort'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#TerminalBuilding'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Film">\n<title type="class">FILM</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#FinancialService">\n<title type="class">FINANCIAL SERVICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FinancialService'),class('#Service')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FireEngine">\n<title type="class">FIRE ENGINE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FireEngine'),class('#MotorVehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FireStation">\n<title type="class">FIRE STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FireStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FireStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),class('#FireEngine'))))))).
subClassOf(class('#FireStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),class('#FireEngine'))))).
subClassOf(class('#FireStation'),objectSomeValuesFrom(objectProperty('#isOperatedBy'),class('#EmergencyServiceOrganisation'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Fish">\n<title type="class">FISH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Fish'),class('#Animal')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FishMarket">\n<title type="class">FISH MARKET</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FishMarket'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FishMarket'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Fish'))))))).
subClassOf(class('#FishMarket'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Fish'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Flat">\n<title type="class">FLAT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Flat'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Flat'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),class('#Building'))).
subClassOf(class('#Flat'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Flower">\n<title type="class">FLOWER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Flower'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Food">\n<title type="class">FOOD</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Football">\n<title type="class">FOOTBALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Football'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FootballCentre">\n<title type="class">FOOTBALL CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FootballCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FootballCentre'),objectMinCardinality('2',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#FootballGround'))).
subClassOf(class('#FootballCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Football'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FootballGround">\n<title type="class">FOOTBALL GROUND</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FootballGround'),class('#SportsGround')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FootballGround'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Football'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FootballStadium">\n<title type="class">FOOTBALL STADIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FootballStadium'),class('#Stadium')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FootballStadium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Football'))))))).
subClassOf(class('#FootballStadium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Football'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Footprint">\n<title type="class">FOOTPRINT</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Footprint'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Footprint')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Forge">\n<title type="class">FORGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Forge'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Forge'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MetalProduct'))))))).
subClassOf(class('#Forge'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MetalProduct'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Fort">\n<title type="class">FORT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Fort'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Fort'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Defence')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Foundry">\n<title type="class">FOUNDRY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Foundry'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Foundry'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Glass'),class('#Metal')))))).
subClassOf(class('#Foundry'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Glass'),class('#Metal')))))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#SteelWorks'),class('#GlassFoundry')],class('#Foundry')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Fowl">\n<title type="class">FOWL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Fowl'),class('#Bird')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Freight">\n<title type="class">FREIGHT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#FreightTerminal">\n<title type="class">FREIGHT TERMINAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FreightTerminal'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FreightTerminal'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Freight'))))))).
subClassOf(class('#FreightTerminal'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Freight'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Fruit">\n<title type="class">FRUIT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#FuneralParlour">\n<title type="class">FUNERAL PARLOUR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#FuneralParlour'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#FuneralParlour'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Preparation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Corpse')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Burial'),class('#Cremation')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GameBird">\n<title type="class">GAME BIRD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GameBird'),class('#Bird')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Garage_Private">\n<title type="class">GARAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Garage_Private'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Garage_Private'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Vehicle'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Garage_Service">\n<title type="class">GARAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Garage_Service'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Garage_Service'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Servicing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Vehicle'))))))).
subClassOf(class('#Garage_Service'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Servicing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Vehicle'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Garaging">\n<title type="class">GARAGING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Garaging'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GardenCentre">\n<title type="class">GARDEN CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GardenCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GardenCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Plant'))))))).
subClassOf(class('#GardenCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Plant'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GardenShed">\n<title type="class">GARDEN SHED</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GardenShed'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GardenShed'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),objectUnionOf(class('#Allotment'),class('#Garden_Private')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Garden_Private">\n<title type="class">GARDEN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Garden_Private'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Garden_Private'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#Recreation'),objectIntersectionOf(class('#Growing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Flower'),class('#Fruit'),class('#Vegetable'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gardens">\n<title type="class">GARDENS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Gardens'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Gardens'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Plant'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#WinterGarden_Garden'),class('#Gardens')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gas">\n<title type="class">GAS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#GasFlow">\n<title type="class">GAS FLOW</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#GasGovenor">\n<title type="class">GAS GOVENOR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GasGovenor'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GasGovenor'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Control'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#GasFlow'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GasMeterHouse">\n<title type="class">GAS METER HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GasMeterHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GasMeterHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Control'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#GasFlow'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GasTerminal">\n<title type="class">GAS TERMINAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GasTerminal'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GasTerminal'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Gas')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Distribution'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Gas'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GasWorks">\n<title type="class">GAS WORKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GasWorks'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GasWorks'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Gas')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Distribution'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Gas'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gate">\n<title type="class">GATE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Gate'),class('#Structure')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gatehouse">\n<title type="class">GATEHOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Gatehouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Gatehouse'),objectUnionOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Gate')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Gate')))).
subClassOf(class('#Gatehouse'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Gatekeeper'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gatekeeper">\n<title type="class">GATEKEEPER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Gatekeeper'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Generation">\n<title type="class">GENERATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Generation'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Glass">\n<title type="class">GLASS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#GlassFoundry">\n<title type="class">GLASS FOUNDRY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GlassFoundry'),class('#Foundry')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GlassFoundry'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Glass'))))))).
subClassOf(class('#GlassFoundry'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Glass'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Goods">\n<title type="class">GOODS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#GoodsShed">\n<title type="class">GOODS SHED</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GoodsShed'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GoodsShed'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GoodsStation">\n<title type="class">GOODS STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GoodsStation'),class('#RailwayStation')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GoodsStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Freight'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GoodsYard">\n<title type="class">GOODS YARD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GoodsYard'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GoodsYard'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectUnionOf(class('#GoodsShed'),class('#Warehouse')))).
subClassOf(class('#GoodsYard'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Goods'),class('#RawMaterial')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GospelHall">\n<title type="class">GOSPEL HALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GospelHall'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GospelHall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#GospelHall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GovernmentOffice">\n<title type="class">GOVERNMENT OFFICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GovernmentOffice'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GovernmentOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('#isCarriedOutBy'),class('#CentralGovernment'))))))).
subClassOf(class('#GovernmentOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('#isCarriedOutBy'),class('#CentralGovernment'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GovernmentOrganisation">\n<title type="class">GOVERNMENT ORGANISATION</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#LocalAuthority'),class('#CentralGovernment')],class('#GovernmentOrganisation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Grain">\n<title type="class">GRAIN</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#GrammarSchool">\n<title type="class">GRAMMAR SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GrammarSchool'),class('#SecondarySchool')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Granary">\n<title type="class">GRANARY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Granary'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Granary'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Grain'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Grapes">\n<title type="class">GRAPES</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Greenhouse">\n<title type="class">GREENHOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Greenhouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Greenhouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Growing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Plant'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Greyhound">\n<title type="class">GREYHOUND</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Greyhound'),class('#Dog')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GreyhoundTrack">\n<title type="class">GREYHOUND TRACK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GreyhoundTrack'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GreyhoundTrack'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Racing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Greyhound'))))).
subClassOf(class('#GreyhoundTrack'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Ground">\n<title type="class">GROUND</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Ground'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Growing">\n<title type="class">GROWING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Growing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GuestHouse">\n<title type="class">GUEST HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#GuestHouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#GuestHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))))).
subClassOf(class('#GuestHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Guildhall">\n<title type="class">GUILDHALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Guildhall'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Guildhall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PublicEvent'))))))).
subClassOf(class('#Guildhall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PublicEvent'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gurdwara">\n<title type="class">GURDWARA</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Gurdwara'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Gurdwara'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Sikh'))))))).
subClassOf(class('#Gurdwara'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Sikh'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gym">\n<title type="class">GYM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Gym'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Gym'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Exercising'))))).
subClassOf(class('#Gym'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Exercising'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hall">\n<title type="class">HALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hall'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Hall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Meeting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))))).
subClassOf(class('#Hall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Meeting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#HallOfResidence">\n<title type="class">HALL OF RESIDENCE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HallOfResidence'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#HallOfResidence'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Student'))))))).
subClassOf(class('#HallOfResidence'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Student'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hardware">\n<title type="class">HARDWARE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#HealthCare">\n<title type="class">HEALTH CARE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HealthCare'),class('#Care')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#PalliativeHealthCare'),class('#HealthCare')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#HealthCentre">\n<title type="class">HEALTH CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HealthCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#HealthCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare'))))))).
subClassOf(class('#HealthCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hide">\n<title type="class">HIDE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hide'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Hide'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Observation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Wildlife'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hiker">\n<title type="class">HIKER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hiker'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hill">\n<title type="class">HILL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hill'),class('#Landform')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#HillFort">\n<title type="class">HILL FORT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HillFort'),class('#HistoricSite')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#HillFort'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Hill'))).
subClassOf(class('#HillFort'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),class('#Defence'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#HistoricInterest">\n<title type="class">HISTORIC INTEREST</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#HistoricSite">\n<title type="class">HISTORIC SITE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HistoricSite'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#HistoricSite'),objectSomeValuesFrom(objectProperty('#hasHistoricInterest'),class('#HistoricInterest'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#HillFort'),class('#HistoricSite')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Holding">\n<title type="class">HOLDING</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Holding'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Holding')).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#Holding'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hops">\n<title type="class">HOPS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Horse">\n<title type="class">HORSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Horse'),class('#Animal')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#RaceHorse'),class('#Horse')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hospice">\n<title type="class">HOSPICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hospice'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Hospice'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PalliativeHealthCare')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient'))))))]).
subClassOf(class('#Hospice'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PalliativeHealthCare')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hospital">\n<title type="class">HOSPITAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hospital'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Hospital'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient'))))))]).
subClassOf(class('#Hospital'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Patient'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hostel">\n<title type="class">HOSTEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hostel'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Hostel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))))).
subClassOf(class('#Hostel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#YouthHostel'),class('#YWCAHostel'),class('#YMCAHostel')],class('#Hostel')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hotel">\n<title type="class">HOTEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hotel'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Hotel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))))).
subClassOf(class('#Hotel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Accommodation'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#House">\n<title type="class">HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#House'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#House'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Housing">\n<title type="class">HOUSING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Housing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#HousingEstate">\n<title type="class">HOUSING ESTATE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HousingEstate'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#HousingEstate'),objectMinCardinality('2',objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))))).
subClassOf(class('#HousingEstate'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#HumanConsumption">\n<title type="class">HUMAN CONSUMPTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HumanConsumption'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Hunter">\n<title type="class">HUNTER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Hunter'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#HydroelectricPowerStation">\n<title type="class">HYDROELECTRIC POWER STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#HydroelectricPowerStation'),class('#PowerStation')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#HydroelectricPowerStation'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Reservoir')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Dam'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#IceRink">\n<title type="class">ICE RINK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#IceRink'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#IceRink'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#IceSkating'))))).
subClassOf(class('#IceRink'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#IceSkating'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#IceSkating">\n<title type="class">ICE SKATING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#IceSkating'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Icehouse">\n<title type="class">ICEHOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Icehouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Icehouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#ColdStorage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#IndustrialProcessing">\n<title type="class">INDUSTRIAL PROCESSING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#IndustrialProcessing'),class('#Purpose')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Manufacturing'),class('#IndustrialProcessing')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Infant">\n<title type="class">INFANT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Infant'),class('#Child')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#InfantSchool">\n<title type="class">INFANT SCHOOL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#InfantSchool'),objectIntersectionOf(class('#School'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#InfantSchoolPupil')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#InfantSchoolPupil')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#InfantSchoolPupil">\n<title type="class">INFANT SCHOOL PUPIL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#InfantSchoolPupil'),class('#Student')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#InshoreLifeboat">\n<title type="class">INSHORE LIFEBOAT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#InshoreLifeboat'),class('#Lifeboat')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#InshoreRescueBoatStation">\n<title type="class">INSHORE RESCUE BOAT STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#InshoreRescueBoatStation'),class('#LifeboatStation')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#InshoreRescueBoatStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#InshoreLifeboat'))))))).
subClassOf(class('#InshoreRescueBoatStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#InshoreLifeboat'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Inspection">\n<title type="class">INSPECTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Inspection'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#JehovahsWitness">\n<title type="class">JEHOVAH\'S WITNESS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#JehovahsWitness'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Jew">\n<title type="class">JEW</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Jew'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#JobCentre">\n<title type="class">JOB CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#JobCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#JobCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#EmploymentService'))))))).
subClassOf(class('#JobCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#EmploymentService'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#JuniorSchool">\n<title type="class">JUNIOR SCHOOL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#JuniorSchool'),objectIntersectionOf(class('#School'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#JuniorSchoolPupil')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#JuniorSchoolPupil')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#JuniorSchoolPupil">\n<title type="class">JUNIOR SCHOOL PUPIL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#JuniorSchoolPupil'),class('#Student')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Justice">\n<title type="class">JUSTICE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#JuvenileCourt">\n<title type="class">JUVENILE COURT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#JuvenileCourt'),class('#LawCourt')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#JuvenileCourt'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Justice')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#YoungPerson'))))).
subClassOf(class('#JuvenileCourt'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Justice')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#YoungPerson'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kennels">\n<title type="class">KENNELS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Kennels'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Kennels'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Dog'))))))).
subClassOf(class('#Kennels'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Dog'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#KingdomHall">\n<title type="class">KINGDOM HALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#KingdomHall'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#KingdomHall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#JehovahsWitness'))))))).
subClassOf(class('#KingdomHall'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#JehovahsWitness'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kirk">\n<title type="class">KIRK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Kirk'),class('#Church')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Kirk'),objectHasValue(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),namedIndividual('#scotland'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Kitchen">\n<title type="class">KITCHEN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Kitchen'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Kitchen'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#CateringFacility'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Knackery">\n<title type="class">KNACKERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Knackery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Knackery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Slaughter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Livestock'),objectComplementOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HumanConsumption')))))))))).
subClassOf(class('#Knackery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Slaughter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Livestock'),objectComplementOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HumanConsumption')))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Laboratory">\n<title type="class">LABORATORY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Laboratory'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Laboratory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#Analysis'),class('#Research')))).
subClassOf(class('#Laboratory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#Analysis'),class('#Research')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Lairage">\n<title type="class">LAIRAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Lairage'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Lairage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Holding'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Livestock'))))))).
subClassOf(class('#Lairage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Holding'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Livestock'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Lake">\n<title type="class">LAKE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Lake'),class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Landform">\n<title type="class">LANDFORM</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#MountainousArea'),class('#Moorland'),class('#Hill'),numberOfElements('4')],class('#Landform')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LawCourt">\n<title type="class">LAW COURT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LawCourt'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LawCourt'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Justice'))))))).
subClassOf(class('#LawCourt'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Justice'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#SheriffsCourt'),class('#MagistratesCourt'),class('#JuvenileCourt'),numberOfElements('4')],class('#LawCourt')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LeisureCentre">\n<title type="class">LEISURE CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LeisureCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LeisureCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sport'))))))).
subClassOf(class('#LeisureCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sport'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Library">\n<title type="class">LIBRARY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Library'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Library'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(objectUnionOf(class('#Holding'),class('#Loaning')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Publication'))))).
subClassOf(class('#Library'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(objectUnionOf(class('#Holding'),class('#Loaning')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Publication'))))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#ReadingRoom'),class('#Library')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LifeGuardStation">\n<title type="class">LIFE GUARD STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LifeGuardStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LifeGuardStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Watching'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Coast'))))))).
subClassOf(class('#LifeGuardStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Watching'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Coast'))))).
subClassOf(class('#LifeGuardStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Lifeboat">\n<title type="class">LIFEBOAT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Lifeboat'),class('#Vehicle')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#InshoreLifeboat'),class('#Lifeboat')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LifeboatHouse">\n<title type="class">LIFEBOAT HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LifeboatHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LifeboatHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Lifeboat'))))).
subClassOf(class('#LifeboatHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LifeboatStation">\n<title type="class">LIFEBOAT STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LifeboatStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LifeboatStation'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea')),objectSomeValuesFrom(objectProperty('#isOperatedBy'),class('#EmergencyServiceOrganisation'))]).
subClassOf(class('#LifeboatStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Lifeboat'))))))).
subClassOf(class('#LifeboatStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Lifeboat'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#InshoreRescueBoatStation'),class('#LifeboatStation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Lighthouse">\n<title type="class">LIGHTHOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Lighthouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Lighthouse'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#NavigationAid')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea'))]).
subClassOf(class('#Lighthouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#NavigationAid'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LiveryStables">\n<title type="class">LIVERY STABLES</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LiveryStables'),class('#Stables')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Livestock">\n<title type="class">LIVESTOCK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Livestock'),class('#Animal')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Sheep'),class('#Pig'),class('#Cattle')],class('#Livestock')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Loaning">\n<title type="class">LOANING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Loaning'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LocalAuthority">\n<title type="class">LOCAL AUTHORITY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LocalAuthority'),class('#GovernmentOrganisation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Lock">\n<title type="class">LOCK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Lock'),class('#Structure')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LockHouse">\n<title type="class">LOCK HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LockHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LockHouse'),objectUnionOf(objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#LockKeeper')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#LockKeeper')))))).
subClassOf(class('#LockHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Lock'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LockKeeper">\n<title type="class">LOCK KEEPER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LockKeeper'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LockUp">\n<title type="class">LOCKUP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LockUp'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LockUp'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Prisoner'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MagistratesCourt">\n<title type="class">MAGISTRATES COURT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MagistratesCourt'),class('#LawCourt')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Malt">\n<title type="class">MALT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#MaltHouse">\n<title type="class">MALT HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MaltHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MaltHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Malting'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Malting">\n<title type="class">MALTING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Malting'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Maltings">\n<title type="class">MALTINGS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Maltings'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Maltings'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Malting')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#MaltHouse'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Manor">\n<title type="class">MANOR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Manor'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Manor'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))))).
subClassOf(class('#Manor'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Person'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Manse">\n<title type="class">MANSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Manse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Manse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Minister_Religion'))))))).
subClassOf(class('#Manse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Minister_Religion'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Manufacturing">\n<title type="class">MANUFACTURING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Manufacturing'),class('#IndustrialProcessing')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Market">\n<title type="class">MARKET</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Market'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Market'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Goods'),class('#Livestock')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MartelloTower">\n<title type="class">MARTELLO TOWER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MartelloTower'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MartelloTower'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea')),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),class('#Defence'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Mausoleum">\n<title type="class">MAUSOLEUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Mausoleum'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Mausoleum'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Entombment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Corpse'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Meat">\n<title type="class">MEAT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Meeting">\n<title type="class">MEETING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Meeting'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MeetingHouse">\n<title type="class">MEETING HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MeetingHouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MeetingHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Quaker'))))))).
subClassOf(class('#MeetingHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Quaker'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Metal">\n<title type="class">METAL</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf(class('#Steel'),class('#Metal')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MetalProduct">\n<title type="class">METAL PRODUCT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#MilitaryActivity">\n<title type="class">MILITARY ACTIVITY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MilitaryActivity'),class('#Purpose')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Defence'),class('#MilitaryActivity')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MilitaryBase">\n<title type="class">MILITARY BASE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MilitaryBase'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MilitaryBase'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#MilitaryActivity'))))).
subClassOf(class('#MilitaryBase'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#MilitaryActivity'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#NavalBase'),class('#NavalAirStation'),class('#MilitaryCamp'),numberOfElements('4')],class('#MilitaryBase')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MilitaryCamp">\n<title type="class">MILITARY CAMP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MilitaryCamp'),class('#MilitaryBase')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MilitaryCamp'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MilitaryPersonnel'))))))).
subClassOf(class('#MilitaryCamp'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MilitaryPersonnel'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MilitaryPersonnel">\n<title type="class">MILITARY PERSONNEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MilitaryPersonnel'),class('#Person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#ArmyReservist'),class('#MilitaryPersonnel')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Milk">\n<title type="class">MILK</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Milling">\n<title type="class">MILLING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Milling'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Minister_Religion">\n<title type="class">MINISTER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Minister_Religion'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Minster">\n<title type="class">MINSTER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Minster'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Minster'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Minster'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Mission">\n<title type="class">MISSION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Mission'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Mission'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#CharitableActivity'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian')))))).
subClassOf(class('#Mission'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#CharitableActivity'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian')))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Monastery">\n<title type="class">MONASTERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Monastery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Monastery'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Monk'))))))]).
subClassOf(class('#Monastery'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Monk'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Monk">\n<title type="class">MONK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Monk'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Moorland">\n<title type="class">MOORLAND</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Moorland'),class('#Landform')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Mortuary">\n<title type="class">MORTUARY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Mortuary'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Mortuary'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Corpse'))))))).
subClassOf(class('#Mortuary'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Corpse'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Mosque">\n<title type="class">MOSQUE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Mosque'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Mosque'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Muslim'))))))).
subClassOf(class('#Mosque'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Muslim'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MotorBike">\n<title type="class">MOTOR BIKE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MotorBike'),class('#MotorVehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MotorVehicle">\n<title type="class">MOTOR VEHICLE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MotorVehicle'),class('#Vehicle')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#MotorBike'),class('#FireEngine'),class('#Coach'),numberOfElements('6')],class('#MotorVehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Motorist">\n<title type="class">MOTORIST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Motorist'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountainRescueHut">\n<title type="class">MOUNTAIN RESCUE HUT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MountainRescueHut'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MountainRescueHut'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#MountainousArea'))).
subClassOf(class('#MountainRescueHut'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RescueFacility'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountainousArea">\n<title type="class">MOUNTAINOUS AREA</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MountainousArea'),class('#Landform')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MultiStoreyCarPark">\n<title type="class">MULTI-STOREY CAR PARK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MultiStoreyCarPark'),class('#CarPark')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MultiStoreyCarPark'),objectMinCardinality('2',objectProperty('#hasStorey'),class('#Storey'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MunicipalBuilding">\n<title type="class">MUNICIPAL BUILDING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#MunicipalBuilding'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#MunicipalBuilding'),objectExactCardinality('1',objectProperty('#isOwnedBy'),class('#LocalAuthority'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Museum">\n<title type="class">MUSEUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Museum'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Museum'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Artefact'))))))).
subClassOf(class('#Museum'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Artefact'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Muslim">\n<title type="class">MUSLIM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Muslim'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Name">\n<title type="class">NAME</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#NavalAirStation">\n<title type="class">NAVAL AIR STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NavalAirStation'),class('#MilitaryBase')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#NavalAirStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Airfield'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NavalBase">\n<title type="class">NAVAL BASE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NavalBase'),class('#MilitaryBase')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#NavalBase'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#NavalShip'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NavalShip">\n<title type="class">NAVAL SHIP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NavalShip'),class('#Ship')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NavigationAid">\n<title type="class">NAVIGATION AID</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NavigationAid'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NuclearPowerStation">\n<title type="class">NUCLEAR POWER STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NuclearPowerStation'),class('#PowerStation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Nun">\n<title type="class">NUN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Nun'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Nurse">\n<title type="class">NURSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Nurse'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NurserySchool">\n<title type="class">NURSERY SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NurserySchool'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#NurserySchool'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Care'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Infant'))))))))).
subClassOf(class('#NurserySchool'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Care'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Infant'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Nursery_Horticulture">\n<title type="class">NURSERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Nursery_Horticulture'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Nursery_Horticulture'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Growing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Plant'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NursesHome">\n<title type="class">NURSES HOME</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NursesHome'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#NursesHome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Nurse'))))))).
subClassOf(class('#NursesHome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Nurse'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NursingHome">\n<title type="class">NURSING HOME</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#NursingHome'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#NursingHome'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Care'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElderlyPerson')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElderlyPerson'))))))]).
subClassOf(class('#NursingHome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Care'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElderlyPerson'))))))))).
subClassOf(class('#NursingHome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElderlyPerson'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#OastHouse">\n<title type="class">OAST HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#OastHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#OastHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Drying'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Hops'),class('#Malt')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Observation">\n<title type="class">OBSERVATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Observation'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Observatory">\n<title type="class">OBSERVATORY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Observatory'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Observatory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#AstronomicalResearch'))))).
subClassOf(class('#Observatory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#AstronomicalResearch'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#OfficeBuilding">\n<title type="class">OFFICE BUILDING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#OfficeBuilding'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#OfficeBuilding'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#OfficeWorker'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#OfficeWorker">\n<title type="class">OFFICE WORKER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#OfficeWorker'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Oil">\n<title type="class">OIL</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#OilRefinery">\n<title type="class">OIL REFINERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#OilRefinery'),class('#Refinery')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#OilRefinery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Refining'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Oil'))))))).
subClassOf(class('#OilRefinery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Refining'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Oil'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#OilStorageDepot">\n<title type="class">OIL STORAGE DEPOT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#OilStorageDepot'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#OilStorageDepot'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Oil'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Opera">\n<title type="class">OPERA</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Opera'),class('#Performance')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#OperaHouse">\n<title type="class">OPERA HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#OperaHouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#OperaHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Opera'))))))).
subClassOf(class('#OperaHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Opera'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Oratory">\n<title type="class">ORATORY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Oratory'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Oratory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Oratory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Ordnance">\n<title type="class">ORDNANCE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Palace">\n<title type="class">PALACE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Palace'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Palace'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Archbishop'),class('#Bishop'),class('#RoyalFamily')))))).
subClassOf(class('#Palace'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Archbishop'),class('#Bishop'),class('#RoyalFamily')))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PalliativeHealthCare">\n<title type="class">PALLIATIVE HEALTH CARE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PalliativeHealthCare'),class('#HealthCare')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Pandy">\n<title type="class">PANDY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Pandy'),objectIntersectionOf(class('#Watermill'),objectHasValue(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),namedIndividual('#wales')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ParcelOffice">\n<title type="class">PARCEL OFFICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ParcelOffice'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ParcelOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))))).
subClassOf(class('#ParcelOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Parking">\n<title type="class">PARKING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Parking'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Parson">\n<title type="class">PARSON</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Parson'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Parsonage">\n<title type="class">PARSONAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Parsonage'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Parsonage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Parson'))))))).
subClassOf(class('#Parsonage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Parson'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Passenger">\n<title type="class">PASSENGER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Passenger'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Patient">\n<title type="class">PATIENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Patient'),class('#Person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#PsychiatricPatient'),class('#Patient')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Performance">\n<title type="class">PERFORMANCE</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#Play'),class('#Opera'),class('#Concert')],class('#Performance')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Person">\n<title type="class">PERSON</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#VulnerablePerson'),class('#Tourist'),class('#Teenager'),numberOfElements('32')],class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PersonalConsumption">\n<title type="class">PERSONAL CONSUMPTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PersonalConsumption'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PetrolStation">\n<title type="class">PETROL STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PetrolStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PetrolStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Refuelling'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MotorVehicle'))))).
subClassOf(class('#PetrolStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Pig">\n<title type="class">PIG</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Pig'),class('#Livestock')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Pigeon">\n<title type="class">PIGEON</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Pigeon'),class('#Bird')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PigeonLoft">\n<title type="class">PIGEON LOFT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PigeonLoft'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PigeonLoft'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Pigeon'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Piggery">\n<title type="class">PIGGERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Piggery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Piggery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Rearing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Pig'))))))).
subClassOf(class('#Piggery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Rearing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Pig'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Pillbox">\n<title type="class">PILLBOX</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Pillbox'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Pillbox'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),class('#Defence'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Place">\n<title type="class">PLACE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Place'),class('#TopographicObject')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Place'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Purpose')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#TopographicObject'))]).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Zoo'),class('#Zion'),class('#YouthClub'),numberOfElements('211')],class('#Place')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Plant">\n<title type="class">PLANT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Play">\n<title type="class">PLAY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Play'),class('#Performance')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Playing">\n<title type="class">PLAYING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Playing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Police">\n<title type="class">POLICE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#PoliceBeatOffice">\n<title type="class">POLICE BEAT OFFICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PoliceBeatOffice'),class('#PoliceStation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PoliceHeadquarters">\n<title type="class">POLICE HEADQUARTERS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PoliceHeadquarters'),class('#PoliceStation')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PoliceHeadquarters'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Police'))))))).
subClassOf(class('#PoliceHeadquarters'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Administration'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Police'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PoliceHouse">\n<title type="class">POLICE HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PoliceHouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PoliceHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Police'))))))).
subClassOf(class('#PoliceHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Police'))))).
subClassOf(class('#PoliceHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#RuralArea'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PoliceStation">\n<title type="class">POLICE STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PoliceStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PoliceStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Police'))))))).
subClassOf(class('#PoliceStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Base'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Police'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#PoliceHeadquarters'),class('#PoliceBeatOffice')],class('#PoliceStation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PostOffice">\n<title type="class">POLICE OFFICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PostOffice'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PostOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))))).
subClassOf(class('#PostOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PostalService">\n<title type="class">POSTAL SERVICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PostalService'),class('#Service')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Poultry">\n<title type="class">POULTRY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Poultry'),objectIntersectionOf(class('#Fowl'),class('#Livestock'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PoultryHouse">\n<title type="class">POULTRY HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PoultryHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PoultryHouse'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Egg')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Poultry'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PowerStation">\n<title type="class">POWER STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PowerStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PowerStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Generation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Electricity'))))))).
subClassOf(class('#PowerStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Generation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Electricity'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#NuclearPowerStation'),class('#HydroelectricPowerStation')],class('#PowerStation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Preparation">\n<title type="class">PREPARATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Preparation'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PreparatorySchool">\n<title type="class">PREPARATORY SCHOOL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#PreparatorySchool'),objectIntersectionOf(class('#PrivateSchool'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#JuniorSchoolPupil')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#JuniorSchoolPupil')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Presbytery">\n<title type="class">PRESBYTERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Presbytery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Presbytery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Priest'))))))).
subClassOf(class('#Presbytery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Priest'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Priest">\n<title type="class">PRIEST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Priest'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PrimarySchool">\n<title type="class">PRIMARY SCHOOL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#PrimarySchool'),objectIntersectionOf(class('#School'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#InfantSchoolPupil'),class('#JuniorSchoolPupil'))))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#InfantSchoolPupil'),class('#JuniorSchoolPupil'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Prior">\n<title type="class">PRIOR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Prior'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Prioress">\n<title type="class">PRIORESS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Prioress'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Priory">\n<title type="class">PRIORY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Priory'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Priory'),objectExactCardinality('1',objectProperty('#isLedBy'),objectUnionOf(class('#Prior'),class('#Prioress')))).
subClassOf(class('#Priory'),objectIntersectionOf(objectUnionOf(class('#Convent'),class('#Monastery')),objectComplementOf(objectIntersectionOf(class('#Convent'),class('#Monastery'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PrioryChurch">\n<title type="class">PRIORY CHURCH</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#PrioryChurch'),objectIntersectionOf(class('#Church'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#Priory')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Prison">\n<title type="class">PRISON</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Prison'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Prison'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Prisoner'))))))).
subClassOf(class('#Prison'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Prisoner'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#RemandCentre'),class('#Prison')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Prisoner">\n<title type="class">PRISONER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Prisoner'),class('#Person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#RemandPrisoner'),class('#Prisoner')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PrivateSchool">\n<title type="class">PRIVATE SCHOOL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#PrivateSchool'),objectIntersectionOf(class('#School'),objectComplementOf(objectSomeValuesFrom(objectProperty('#isOperatedBy'),class('#GovernmentOrganisation'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#PublicSchool'),class('#PrivateSchool')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Processing">\n<title type="class">PROCESSING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Processing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Produce">\n<title type="class">PRODUCE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Production">\n<title type="class">PRODUCTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Production'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Protection">\n<title type="class">PROTECTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Protection'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Provision">\n<title type="class">PROVISION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Provision'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PsychiatricHospital">\n<title type="class">PSYCHIATRIC HOSPITAL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PsychiatricHospital'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PsychiatricHospital'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PsychiatricPatient'))))))]).
subClassOf(class('#PsychiatricHospital'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PsychiatricPatient'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PsychiatricPatient">\n<title type="class">PSYCHIATRIC PATIENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PsychiatricPatient'),class('#Patient')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PublicConvenience">\n<title type="class">PUBLIC CONVENIENCE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PublicConvenience'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PublicConvenience'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ToiletFacility'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PublicEvent">\n<title type="class">PUBLIC EVENT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#PublicHouse">\n<title type="class">PUBLIC HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PublicHouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PublicHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Consumption'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Beer'))))))).
subClassOf(class('#PublicHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Consumption'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Beer'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PublicIncinerator">\n<title type="class">PUBLIC INCINERATOR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PublicIncinerator'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PublicIncinerator'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Burning'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Waste'))))))).
subClassOf(class('#PublicIncinerator'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Burning'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Waste'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PublicSchool">\n<title type="class">PUBLIC SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PublicSchool'),class('#PrivateSchool')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Publication">\n<title type="class">PUBLICATION</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Pump">\n<title type="class">PUMP</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#PumpHouse">\n<title type="class">PUMP HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PumpHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PumpHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Pump'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Pumping">\n<title type="class">PUMPING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Pumping'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PumpingStation">\n<title type="class">PUMPING STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#PumpingStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PumpingStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Pumping'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(objectUnionOf(class('#Oil'),class('#Sewage'),class('#Water')),objectComplementOf(objectIntersectionOf(class('#Oil'),class('#Sewage'))),objectComplementOf(objectIntersectionOf(class('#Oil'),class('#Sewage'),class('#Water'))),objectComplementOf(objectIntersectionOf(class('#Oil'),class('#Water'))),objectComplementOf(objectIntersectionOf(class('#Sewage'),class('#Water')))))))).
subClassOf(class('#PumpingStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Pumping'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(objectUnionOf(class('#Oil'),class('#Sewage'),class('#Water')),objectComplementOf(objectIntersectionOf(class('#Oil'),class('#Sewage'))),objectComplementOf(objectIntersectionOf(class('#Oil'),class('#Sewage'),class('#Water'))),objectComplementOf(objectIntersectionOf(class('#Oil'),class('#Water'))),objectComplementOf(objectIntersectionOf(class('#Sewage'),class('#Water')))))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Purpose">\n<title type="class">PURPOSE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Purpose'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Purpose')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Worship'),class('#Watching'),class('#Treatment'),numberOfElements('87')],class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Quaker">\n<title type="class">QUAKER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Quaker'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RaceHorse">\n<title type="class">RACE HORSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RaceHorse'),class('#Horse')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Racing">\n<title type="class">RACING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Racing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RacingStable">\n<title type="class">RACING STABLES</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RacingStable'),class('#Stables')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RacingStable'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RaceHorse'))))))).
subClassOf(class('#RacingStable'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RaceHorse'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RadarStation">\n<title type="class">RADAR STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RadarStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RadarStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#NavigationAid'),class('#Surveillance')))).
subClassOf(class('#RadarStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#NavigationAid'),class('#Surveillance')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RadioSignal">\n<title type="class">RADIO SIGNAL</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#RadioStation">\n<title type="class">RADIO STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RadioStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RadioStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))))).
subClassOf(class('#RadioStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Railway">\n<title type="class">RAILWAY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Railway'),class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RailwayCarriage">\n<title type="class">RAILWAY CARRIAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RailwayCarriage'),class('#Vehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RailwayEngine">\n<title type="class">RAILWAY ENGINE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RailwayEngine'),class('#Vehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RailwayStation">\n<title type="class">RAILWAY STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RailwayStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RailwayStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Railway'))))))).
subClassOf(class('#RailwayStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Railway'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#UndergroundStation'),class('#GoodsStation')],class('#RailwayStation')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RawMaterial">\n<title type="class">RAW MATERIAL</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#ReadingRoom">\n<title type="class">READING ROOM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ReadingRoom'),class('#Library')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Rearing">\n<title type="class">REARING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Rearing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Reception">\n<title type="class">RECEPTION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Reception'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Recording">\n<title type="class">RECORDING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Recording'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Recreation">\n<title type="class">RECREATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Recreation'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Rector">\n<title type="class">RECTOR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Rector'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Rectory">\n<title type="class">RECTORY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Rectory'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Rectory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Rector'))))))).
subClassOf(class('#Rectory'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Rector'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Recycling">\n<title type="class">RECYCLING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Recycling'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RecyclingCentre">\n<title type="class">RECYCLING CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RecyclingCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RecyclingCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Recycling'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Waste'))))))).
subClassOf(class('#RecyclingCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Recycling'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Waste'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Refinery">\n<title type="class">REFINERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Refinery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Refinery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Refining'))))).
subClassOf(class('#Refinery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Refining'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#SugarRefinery'),class('#OilRefinery')],class('#Refinery')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Refining">\n<title type="class">REFINING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Refining'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Refreshment">\n<title type="class">REFRESHMENT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Refuelling">\n<title type="class">REFUELLING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Refuelling'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RemandCentre">\n<title type="class">REMAND CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RemandCentre'),class('#Prison')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RemandCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RemandPrisoner'))))))).
subClassOf(class('#RemandCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RemandPrisoner'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RemandPrisoner">\n<title type="class">REMAND PRISONER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RemandPrisoner'),class('#Prisoner')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Repair">\n<title type="class">REPAIR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Repair'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RepeaterStation">\n<title type="class">REPEATER STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RepeaterStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RepeaterStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))))).
subClassOf(class('#RepeaterStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RescueFacility">\n<title type="class">RESCUE FACILITY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Research">\n<title type="class">RESEARCH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Research'),class('#Purpose')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#AstronomicalResearch'),class('#Research')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Reservoir">\n<title type="class">REFER TO RESERVOIR [HYDROLOGY] AS RESERVOIR.</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Reservoir'),class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Restaurant">\n<title type="class">RESTAURANT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Restaurant'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Restaurant'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Consumption'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Food'))))))).
subClassOf(class('#Restaurant'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Consumption'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Food'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RetailPark">\n<title type="class">RETAIL PARK</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RetailPark'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RetailPark'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Shopping')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Shop'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Riding">\n<title type="class">RIDING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Riding'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RidingSchool">\n<title type="class">RIDING SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RidingSchool'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RidingSchool'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Teaching'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Riding'))))).
subClassOf(class('#RidingSchool'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Stables'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#River">\n<title type="class">RIVER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#River'),class('#TopographicObject')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#TidalRiver'),class('#River')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Road">\n<title type="class">ROAD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Road'),class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RoadsideServices">\n<title type="class">ROADSIDE SERVICES</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RoadsideServices'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RoadsideServices'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Refreshment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),class('#Motorist'))))))))).
subClassOf(class('#RoadsideServices'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Refreshment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for'),class('#Motorist'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Roof">\n<title type="class">ROOF</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Routing">\n<title type="class">ROUTING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Routing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RoyalFamily">\n<title type="class">ROYAL FAMILY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Rugby">\n<title type="class">RUGBY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Rugby'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RugbyGround">\n<title type="class">RUGBY GROUND</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RugbyGround'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RugbyGround'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Rugby'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RugbyStadium">\n<title type="class">RUGBY STADIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#RugbyStadium'),class('#Stadium')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RugbyStadium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Rugby'))))))).
subClassOf(class('#RugbyStadium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Rugby'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RuralArea">\n<title type="class">RURAL AREA</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Sale">\n<title type="class">SALE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Sale'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Salem">\n<title type="class">SALEM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Salem'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Salem'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Salem'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SalvationArmyCitadel">\n<title type="class">SALVATION ARMY CITADEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SalvationArmyCitadel'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SalvationArmyCitadel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#SalvationArmyCitadel'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sanatorium">\n<title type="class">SANATORIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Sanatorium'),class('#ConvalescentHome')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sawmill">\n<title type="class">SAWMILL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Sawmill'),class('#Watermill')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Sawmill'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Processing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Timber'))))))).
subClassOf(class('#Sawmill'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Processing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Timber'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#School">\n<title type="class">SCHOOL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#School'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#School'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))))).
subClassOf(class('#School'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sea">\n<title type="class">SEA</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Seaman">\n<title type="class">SEAMAN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Seaman'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SecondarySchool">\n<title type="class">SECONDARY SCHOOL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#SecondarySchool'),objectIntersectionOf(class('#School'),objectIntersectionOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#SecondarySchoolPupil')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#SecondarySchoolPupil'))))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#GrammarSchool'),class('#ComprehensiveSchool')],class('#SecondarySchool')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SecondarySchoolPupil">\n<title type="class">SECONDARY SCHOOL PUPIL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SecondarySchoolPupil'),class('#Student')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Semi-detachedHouse">\n<title type="class">SEMI-DETACHED HOUSE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Semi-detachedHouse'),objectIntersectionOf(class('#House'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/NetworkRelations/v0.2/NetworkRelations.owl#isConnectedTo'),class('#Semi-detachedHouse')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Service">\n<title type="class">SERVICE</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#SocialService'),class('#PostalService'),class('#FinancialService'),numberOfElements('4')],class('#Service')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ServiceStation">\n<title type="class">SERVICE STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ServiceStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ServiceStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Refreshment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Motorist'))))))))).
subClassOf(class('#ServiceStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Refreshment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Motorist'))))))).
subClassOf(class('#ServiceStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#PetrolStation'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Servicing">\n<title type="class">SERVICING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Servicing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Settlement">\n<title type="class">SETTLEMENT</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#Town'),class('#City')],class('#Settlement')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sewage">\n<title type="class">SEWAGE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#SewagePumpingStation">\n<title type="class">SEWAGE PUMPING STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SewagePumpingStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SewagePumpingStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Pumping'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sewage'))))).
subClassOf(class('#SewagePumpingStation'),objectIntersectionOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Pumping'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sewage')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sheep">\n<title type="class">SHEEP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Sheep'),class('#Livestock')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SheepMarket">\n<title type="class">SHEEP MARKET</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SheepMarket'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SheepMarket'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sheep'))))))).
subClassOf(class('#SheepMarket'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Trading'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sheep'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Shelter">\n<title type="class">SHELTER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Shelter'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SheriffsCourt">\n<title type="class">SHERIFF\'S COURT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SheriffsCourt'),class('#LawCourt')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SheriffsCourt'),objectHasValue(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),namedIndividual('#scotland'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Shinty">\n<title type="class">SHINTY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Shinty'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ShintyStadium">\n<title type="class">SHINTY STADIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ShintyStadium'),class('#Stadium')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ShintyStadium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Shinty'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Ship">\n<title type="class">SHIP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Ship'),class('#Vehicle')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#NavalShip'),class('#ContainerShip')],class('#Ship')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Shipyard">\n<title type="class">SHIPYARD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Shipyard'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Shipyard'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(objectUnionOf(class('#Construction'),class('#Repair')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Ship'))))).
subClassOf(class('#Shipyard'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Sea'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ShireHall">\n<title type="class">SHIRE HALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ShireHall'),class('#CouncilOffice')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ShireHall'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#County'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ShootingBox">\n<title type="class">SHOOTING BOX</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ShootingBox'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ShootingBox'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Hunter'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Shop">\n<title type="class">SHOP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Shop'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Shop'),objectUnionOf(objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf'),class('#Building')))).
subClassOf(class('#Shop'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Shopping'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Superstore'),class('#Shop')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Shopping">\n<title type="class">SHOPPING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Shopping'),class('#Trading')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ShoppingCentre">\n<title type="class">SHOPPING CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ShoppingCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ShoppingCentre'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Shopping')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Shop'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Showing">\n<title type="class">SHOWING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Showing'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SignalStation">\n<title type="class">SIGNAL STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SignalStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SignalStation'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Reception'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RadioSignal')))))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Broadcasting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RadioSignal'))))))]).
subClassOf(class('#SignalStation'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Reception'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RadioSignal')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Broadcasting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#RadioSignal'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sikh">\n<title type="class">SIKH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Sikh'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SkittleAlley">\n<title type="class">SKITTLE ALLEY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SkittleAlley'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SkittleAlley'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Skittles'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Skittles">\n<title type="class">SKITTLES</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Skittles'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Slaughter">\n<title type="class">SLAUGHTER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Slaughter'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Slaughterhouse">\n<title type="class">SLAUGHTERHOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Slaughterhouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Slaughterhouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Slaughter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Livestock'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HumanConsumption'))))))))).
subClassOf(class('#Slaughterhouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Slaughter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectIntersectionOf(class('#Livestock'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HumanConsumption'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Smelter">\n<title type="class">SMELTER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Smelter'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Smelter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Smelting'))))).
subClassOf(class('#Smelter'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Smelting'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Smelting">\n<title type="class">SMELTING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Smelting'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Smithy">\n<title type="class">SMITHY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Smithy'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Smithy'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MetalProduct'))))))).
subClassOf(class('#Smithy'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MetalProduct'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SmokeHouse">\n<title type="class">SMOKE HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SmokeHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SmokeHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Smoking'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Fish'),class('#Meat')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Smoking">\n<title type="class">SMOKING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Smoking'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SocialService">\n<title type="class">SOCIAL SERVICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SocialService'),class('#Service')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SocialServiceCentre">\n<title type="class">SOCIAL SERVICE CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SocialServiceCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SocialServiceCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#SocialService'))))))).
subClassOf(class('#SocialServiceCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#SocialService'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sorting">\n<title type="class">SORTING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Sorting'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SortingOffice">\n<title type="class">SORTING OFFICE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SortingOffice'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SortingOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))))).
subClassOf(class('#SortingOffice'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#PostalService'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SpeedwayStadium">\n<title type="class">SPEEDWAY STADIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SpeedwayStadium'),class('#Stadium')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SpeedwayStadium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Racing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#MotorBike'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Spirit">\n<title type="class">SPIRIT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Sport">\n<title type="class">SPORT</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#Tennis'),class('#TenPinBowling'),class('#Skittles'),numberOfElements('8')],class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SportsCentre">\n<title type="class">SPORTS CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SportsCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SportsCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sport'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SportsGround">\n<title type="class">SPORTS GROUND</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SportsGround'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SportsGround'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sport'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#FootballGround'),class('#CricketGround')],class('#SportsGround')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Stables">\n<title type="class">STABLES</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Stables'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Stables'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Horse'))))))).
subClassOf(class('#Stables'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Horse'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#RacingStable'),class('#LiveryStables')],class('#Stables')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Stadium">\n<title type="class">STADIUM</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Stadium'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Stadium'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#Racing'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sport')))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Velodrome'),class('#SpeedwayStadium'),class('#ShintyStadium'),numberOfElements('5')],class('#Stadium')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Staging">\n<title type="class">STAGING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Staging'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StateSchool">\n<title type="class">STATE SCHOOL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#StateSchool'),objectIntersectionOf(class('#School'),objectSomeValuesFrom(objectProperty('#isOperatedBy'),class('#GovernmentOrganisation')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StatelyHome">\n<title type="class">STATELY HOME</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#StatelyHome'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#StatelyHome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Aristocrat'))))))).
subClassOf(class('#StatelyHome'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Aristocrat'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Steel">\n<title type="class">STEEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Steel'),class('#Metal')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SteelWorks">\n<title type="class">STEEL WORKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SteelWorks'),class('#Foundry')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SteelWorks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Steel'))))))).
subClassOf(class('#SteelWorks'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Steel'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Storage">\n<title type="class">STORAGE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Storage'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage')).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#Storage'),class('#Purpose')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#ColdStorage'),class('#Storage')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StorageDepot">\n<title type="class">STORAGE DEPOT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#StorageDepot'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#StorageDepot'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))))).
subClassOf(class('#StorageDepot'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Store">\n<title type="class">STORE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Store'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Store'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))))).
subClassOf(class('#Store'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Goods'))))).
subClassOf(class('#Store'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#Place'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Storey">\n<title type="class">STOREY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Stream">\n<title type="class">STREAM</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Structure">\n<title type="class">STRUCTURE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Structure'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Structure')).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#Structure'),class('#TopographicObject')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Wall'),class('#Lock'),class('#Gate'),numberOfElements('7')],class('#Structure')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Student">\n<title type="class">STUDENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Student'),class('#Person')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#UniversityStudent'),class('#SecondarySchoolPupil'),class('#JuniorSchoolPupil'),numberOfElements('5')],class('#Student')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sugar">\n<title type="class">SUGAR</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#SugarRefinery">\n<title type="class">SUGAR REFINERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SugarRefinery'),class('#Refinery')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SugarRefinery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Refining'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sugar'))))))).
subClassOf(class('#SugarRefinery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Refining'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Sugar'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Superstore">\n<title type="class">SUPERSTORE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Superstore'),class('#Shop')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Superstore'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Shopping'))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#DIYSuperstore'),class('#Superstore')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Supply">\n<title type="class">SUPPLY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Supply'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Surgery">\n<title type="class">SURGERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Surgery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Surgery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare'))))))).
subClassOf(class('#Surgery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#HealthCare'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Surveillance">\n<title type="class">SURVEILLANCE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Surveillance'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Swan">\n<title type="class">SWAN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Swan'),class('#Bird')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Swannery">\n<title type="class">SWANNERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Swannery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Swannery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Holding'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Swan'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Swimming">\n<title type="class">SWIMMING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Swimming'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SwimmingPool">\n<title type="class">SWIMMING POOL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SwimmingPool'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SwimmingPool'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Swimming')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#Building'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SwingBridge">\n<title type="class">SWING BRIDGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#SwingBridge'),class('#Bridge')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Synagogue">\n<title type="class">SYNAGOGUE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Synagogue'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Synagogue'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Jew'))))))).
subClassOf(class('#Synagogue'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Jew'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Tabernacle">\n<title type="class">TABERNACLE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Tabernacle'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Tabernacle'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Tabernacle'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Tannery">\n<title type="class">TANNERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Tannery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Tannery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Tanning'))))).
subClassOf(class('#Tannery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Tanning'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Tanning">\n<title type="class">TANNING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Tanning'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Teaching">\n<title type="class">TEACHING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Teaching'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TechnicalCollege">\n<title type="class">TECHNICAL COLLEGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TechnicalCollege'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TechnicalCollege'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))))).
subClassOf(class('#TechnicalCollege'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Teenager">\n<title type="class">TEENAGER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Teenager'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TelephoneExchange">\n<title type="class">TELEPHONE EXCHANGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TelephoneExchange'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TelephoneExchange'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Routing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElectronicCommunications'))))))).
subClassOf(class('#TelephoneExchange'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Routing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ElectronicCommunications'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TelevisionStation">\n<title type="class">TELEVISION STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TelevisionStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TelevisionStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))))).
subClassOf(class('#TelevisionStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Temple">\n<title type="class">TEMPLE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Temple'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Temple'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Worship'))))).
subClassOf(class('#Temple'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Worship'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TenPinBowling">\n<title type="class">TEN PIN BOWLING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TenPinBowling'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Tennis">\n<title type="class">TENNIS IS A KIND OF SPORT.</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Tennis'),class('#Sport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TennisClub">\n<title type="class">TENNIS CLUB</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TennisClub'),class('#Club')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TennisClub'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tennis'))))).
subClassOf(class('#TennisClub'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#TennisCourt'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TennisCourt">\n<title type="class">TENNIS COURT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TennisCourt'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TennisCourt'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Playing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tennis'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TerminalBuilding">\n<title type="class">TERMINAL BUILDING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TerminalBuilding'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TerminalBuilding'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Transfer'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Goods'),class('#Passenger')))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#AirTerminalBuilding'),class('#TerminalBuilding')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TerraceHouse">\n<title type="class">TERRACE HOUSE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#TerraceHouse'),objectIntersectionOf(class('#House'),objectUnionOf(objectIntersectionOf(objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/NetworkRelations/v0.2/NetworkRelations.owl#isConnectedTo'),class('#EndTerraceHouse')),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/NetworkRelations/v0.2/NetworkRelations.owl#isConnectedTo'),class('#TerraceHouse'))),objectExactCardinality('2',objectProperty('http://www.ordnancesurvey.co.uk/ontology/NetworkRelations/v0.2/NetworkRelations.owl#isConnectedTo'),class('#TerraceHouse'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TerritorialArmyCentre">\n<title type="class">TERRITORIAL ARMY CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TerritorialArmyCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TerritorialArmyCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Training'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ArmyReservist'))))))).
subClassOf(class('#TerritorialArmyCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Training'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ArmyReservist'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Theatre">\n<title type="class">THEATRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Theatre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Theatre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Play'))))))).
subClassOf(class('#Theatre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Staging'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Play'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TidalRiver">\n<title type="class">TIDAL RIVER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TidalRiver'),class('#River')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TideMill">\n<title type="class">TIDE MILL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TideMill'),class('#Watermill')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TideMill'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#TidalRiver'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Timber">\n<title type="class">TIMBER</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Tithe">\n<title type="class">TITHE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#TitheBarn">\n<title type="class">TITHE BARN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TitheBarn'),class('#Barn')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TitheBarn'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tithe'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ToiletFacility">\n<title type="class">TOILET FACILITY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Toll">\n<title type="class">TOLL</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#TollBooth">\n<title type="class">TOLL BOOTH</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TollBooth'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TollBooth'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Collection'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Toll'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TollHouse">\n<title type="class">TOLL HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TollHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TollHouse'),objectSomeValuesFrom(objectProperty('#hasHistoricPurpose'),objectIntersectionOf(class('#Collection'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Toll'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TollRoad">\n<title type="class">TOLL ROAD</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#TollRoad'),objectIntersectionOf(class('#Road'),objectSomeValuesFrom(objectProperty('#requires'),class('#Toll')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TollStation">\n<title type="class">TOLL STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TollStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TollStation'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn'),class('#TollRoad')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),class('#TollBooth'))]).
subClassOf(class('#TollStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Collection'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Toll'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TopographicObject">\n<title type="class">TOPOGRAPHIC OBJECT</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#TopographicObject'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#TopographicObject')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TopographicObject'),objectSomeValuesFrom(objectProperty('#hasFootprint'),class('#Footprint'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#Structure'),class('#Road'),class('#River'),numberOfElements('10')],class('#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Tourist">\n<title type="class">TOURIST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Tourist'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TouristAttraction">\n<title type="class">TOURIST ATTRACTION</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#TouristAttraction'),objectIntersectionOf(objectUnionOf(class('#Building'),class('#Place')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Entertainment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tourist')))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TouristInformation">\n<title type="class">TOURIST INFORMATION</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#TouristInformationCentre">\n<title type="class">TOURIST INFORMATION CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TouristInformationCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TouristInformationCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#TouristInformation'))))))).
subClassOf(class('#TouristInformationCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#TouristInformation'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Town">\n<title type="class">TOWN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Town'),class('#Settlement')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TownHall">\n<title type="class">TOWN HALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TownHall'),class('#CouncilOffice')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TownHall'),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#Town'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Trading">\n<title type="class">TRADING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Trading'),class('#Purpose')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Shopping'),class('#Trading')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Training">\n<title type="class">TRAINING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Training'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TrainingCentre">\n<title type="class">TRAINING CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TrainingCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TrainingCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))))).
subClassOf(class('#TrainingCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Education'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Transfer">\n<title type="class">TRANSFER</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Transfer'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TransmissionStation">\n<title type="class">TRANSMISSION STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#TransmissionStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#TransmissionStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))))).
subClassOf(class('#TransmissionStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#Broadcasting'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Transport">\n<title type="class">TRANSPORT</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Transport'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport')).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#Transport'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Treatment">\n<title type="class">TREATMENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Treatment'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#UndergroundRailway">\n<title type="class">UNDERGROUND RAIL</title>\n<text>'.
'<subgroup id="Description">'.
subClassOf(class('#UndergroundRailway'),objectIntersectionOf(class('#Railway'),objectSomeValuesFrom(objectProperty('#isLocatedUnder'),class('#Ground')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#UndergroundStation">\n<title type="class">UNDERGROUND STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#UndergroundStation'),class('#RailwayStation')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#UndergroundStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#UndergroundRailway'))))))).
subClassOf(class('#UndergroundStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#UndergroundRailway'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#University">\n<title type="class">UNIVERSITY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#University'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#University'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#UniversityStudent'))))))).
subClassOf(class('#University'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Education'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#UniversityStudent'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#UniversityStudent">\n<title type="class">UNIVERSITY STUDENT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#UniversityStudent'),class('#Student')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ValveHouse">\n<title type="class">VALVE HOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#ValveHouse'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#ValveHouse'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#Reservoir')),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),class('#CanalFeeder'))]).
subClassOf(class('#ValveHouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Control'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#WaterFlow'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Vegetable">\n<title type="class">VEGETABLE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Vehicle">\n<title type="class">VEHICLE</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#Ship'),class('#RailwayEngine'),class('#RailwayCarriage'),numberOfElements('9')],class('#Vehicle')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Velodrome">\n<title type="class">VELODROME</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Velodrome'),class('#Stadium')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Velodrome'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Racing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Bicycle'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#VeterinaryCare">\n<title type="class">VETERINARY CARE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#VeterinaryCare'),class('#Care')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#VeterinarySurgery">\n<title type="class">VETERINARY SURGERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#VeterinarySurgery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#VeterinarySurgery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#VeterinaryCare'))))))).
subClassOf(class('#VeterinarySurgery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Provision'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#VeterinaryCare'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Vicar">\n<title type="class">VICAR</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Vicar'),class('#Christian')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Vicarage">\n<title type="class">VICARAGE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Vicarage'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Vicarage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Vicar'))))))).
subClassOf(class('#Vicarage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Vicar'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Vineyard">\n<title type="class">VINEYARD</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Vineyard'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Vineyard'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Growing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Grapes'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#VisitorCentre">\n<title type="class">VISITOR CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#VisitorCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#VisitorCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Reception'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tourist'))))))).
subClassOf(class('#VisitorCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Reception'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tourist'))))).
subClassOf(class('#VisitorCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn'),class('#TouristAttraction'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#VulnerablePerson">\n<title type="class">VULNERABLE PERSON</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#VulnerablePerson'),class('#Person')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Wall">\n<title type="class">WALL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Wall'),class('#Structure')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Warehouse">\n<title type="class">WAREHOUSE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Warehouse'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Warehouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Goods'),class('#RawMaterial')))))).
subClassOf(class('#Warehouse'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Storage'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),objectUnionOf(class('#Goods'),class('#RawMaterial')))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Waste">\n<title type="class">WASTE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#WasteTransferStation">\n<title type="class">WASTE TRANSFER STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#WasteTransferStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WasteTransferStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Sorting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Waste'))))))).
subClassOf(class('#WasteTransferStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Sorting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Waste'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Watching">\n<title type="class">WATCHING</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Watching'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Water">\n<title type="class">WATER</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#WaterFlow">\n<title type="class">WATER FLOW</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Watermill">\n<title type="class">MILL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Watermill'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Watermill'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#Milling'),class('#Processing'))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear'),objectUnionOf(class('#River'),class('#Stream')))]).
subClassOf(class('#Watermill'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#Milling'),class('#Processing')))))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#TideMill'),class('#Sawmill')],class('#Watermill')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Waterworks">\n<title type="class">WATERWORKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Waterworks'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Waterworks'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Treatment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Water')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Supply'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Water'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Weather">\n<title type="class">WEATHER</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#WeatherStation">\n<title type="class">WEATHER STATION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#WeatherStation'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WeatherStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Recording'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Weather'))))))).
subClassOf(class('#WeatherStation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Recording'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Weather'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WildfowlCentre">\n<title type="class">WILDFOWL CENTRE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#WildfowlCentre'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WildfowlCentre'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Holding'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#GameBird'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Wildlife">\n<title type="class">WILDLIFE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Windmill">\n<title type="class">WINDMILL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Windmill'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Windmill'),objectUnionOf(objectExactCardinality('1',objectProperty('#hasHistoricPurpose'),objectUnionOf(class('#Drainage'),class('#Milling'))),objectExactCardinality('1',objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectUnionOf(class('#Drainage'),class('#Milling'),objectIntersectionOf(class('#Generation'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Electricity'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Wine">\n<title type="class">WINE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#Winery">\n<title type="class">WINERY</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Winery'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Winery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Wine'))))))).
subClassOf(class('#Winery'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Production'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Wine'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WinterGarden_Building">\n<title type="class">WINTER GARDEN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#WinterGarden_Building'),class('#Building')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WinterGarden_Building'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#ExoticPlant')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Entertainment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tourist'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WinterGarden_Garden">\n<title type="class">WINTER GARDEN</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#WinterGarden_Garden'),class('#Gardens')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WinterGarden_Garden'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Exhibition'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Plant')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Entertainment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tourist'))))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Works">\n<title type="class">WORKS</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Works'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Works'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#IndustrialProcessing'))))).
subClassOf(class('#Works'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),class('#IndustrialProcessing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#ChemicalWorks'),class('#Brickworks')],class('#Works')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Worship">\n<title type="class">WORSHIP</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Worship'),class('#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#YMCAHostel">\n<title type="class">YMCA HOSTEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#YMCAHostel'),class('#Hostel')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#YWCAHostel">\n<title type="class">YWCA HOSTEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#YWCAHostel'),class('#Hostel')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#YoungOffenderInstitution">\n<title type="class">YOUNG OFFENDER INSTITUTION</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#YoungOffenderInstitution'),objectIntersectionOf(class('#Prison'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#YoungPerson')))),objectAllValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#YoungPerson')))))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#YoungOffenderInstitution'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#YoungPerson')))),objectAllValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Detention'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#YoungPerson'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#YoungPerson">\n<title type="class">YOUNG PERSON</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#YoungPerson'),objectUnionOf(class('#Child'),class('#Teenager'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#YouthClub">\n<title type="class">YOUTH CLUB</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#YouthClub'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#YouthClub'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Meeting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Teenager'))))))).
subClassOf(class('#YouthClub'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Meeting'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Teenager'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#YouthHostel">\n<title type="class">YOUTH HOSTEL</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#YouthHostel'),class('#Hostel')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Zion">\n<title type="class">ZION</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Zion'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Zion'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))))).
subClassOf(class('#Zion'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Worship'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by'),class('#Christian'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Zoo">\n<title type="class">ZOO</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Zoo'),class('#Place')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Zoo'),[objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Animal')))),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Entertainment'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Tourist'))))]).
subClassOf(class('#Zoo'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart'),objectIntersectionOf(class('#Building'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose'),objectIntersectionOf(class('#Housing'),objectSomeValuesFrom(objectProperty('http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of'),class('#Animal'))))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasAddress">\n<title type="object property">HAS AS ADDRESS</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#hasFootprint">\n<title type="object property">HAS AS FOOTPRINT</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#hasHistoricInterest">\n<title type="object property">HAS AS HISTORIC INTEREST</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#hasHistoricPurpose">\n<title type="object property">HAS AS HISTORIC PURPOSE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#hasName">\n<title type="object property">HAS AS NAME</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#hasStorey">\n<title type="object property">HAS AS STOREY</title>\n<text>'.
'<subgroup id="Typology">'.
subObjectPropertyOf(objectProperty('#hasStorey'),objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#isCarriedOutBy">\n<title type="object property">IS CARRIED OUT BY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#isLedBy">\n<title type="object property">IS LED BY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#isLocatedUnder">\n<title type="object property">IS LOCATED UNDER</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#isOperatedBy">\n<title type="object property">IS OPERATED BY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#isOwnedBy">\n<title type="object property">IS OWNED BY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#operatesDuring">\n<title type="object property">OPERATES DURING</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#requires">\n<title type="object property">REQUIRES</title>\n<text>'.
'</text>\n</description>'.
'<description iri="#scotland">\n<title type="individual">SCOTLAND</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Country'),namedIndividual('#scotland')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#wales">\n<title type="individual">WALES</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Country'),namedIndividual('#wales')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart">\n<title type="object property">HAS AS PART</title>\n<text>'.
'<subgroup id="Description">'.
subObjectPropertyOf(objectProperty('#hasStorey'),objectProperty('http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#hasPart')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/MereologicalRelations/v0.2/MereologicalRelations.owl#isPartOf">\n<title type="object property">IS PART OF</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/NetworkRelations/v0.2/NetworkRelations.owl#isConnectedTo">\n<title type="object property">IS CONNECTED TO</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#by">\n<title type="object property">IS BY</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#for">\n<title type="object property">IS FOR</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#from">\n<title type="object property">IS FROM</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Rabbit/v1.0/Rabbit.owl#of">\n<title type="object property">IS OF</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedIn">\n<title type="object property">IS LOCATED IN</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedNear">\n<title type="object property">IS LOCATED NEAR</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/SpatialRelations/v0.2/SpatialRelations.owl#isLocatedOn">\n<title type="object property">IS LOCATED ON</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Footprint">\n<title type="class">FOOTPRINT</title>\n<text>'.
'<subgroup id="Others">'.
equivalentClasses(class('#Footprint'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Footprint')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Holding">\n<title type="class">HOLDING</title>\n<text>'.
'<subgroup id="Others">'.
equivalentClasses(class('#Holding'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Holding')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Purpose">\n<title type="class">PURPOSE</title>\n<text>'.
'<subgroup id="Others">'.
equivalentClasses(class('#Purpose'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Purpose')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage">\n<title type="class">STORAGE</title>\n<text>'.
'<subgroup id="Others">'.
equivalentClasses(class('#Storage'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Storage')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Structure">\n<title type="class">STRUCTURE</title>\n<text>'.
'<subgroup id="Others">'.
equivalentClasses(class('#Structure'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Structure')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#TopographicObject">\n<title type="class">TOPOGRAPHIC OBJECT</title>\n<text>'.
'<subgroup id="Others">'.
equivalentClasses(class('#TopographicObject'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#TopographicObject')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport">\n<title type="class">TRANSPORT</title>\n<text>'.
'<subgroup id="Others">'.
equivalentClasses(class('#Transport'),class('http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#Transport')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.ordnancesurvey.co.uk/ontology/Topography/v0.1/Topography.owl#hasPurpose">\n<title type="object property">HAS AS PURPOSE</title>\n<text>'.
'</text>\n</description>'.
'<description iri="http://www.w3.org/2002/07/owl#Thing">\n<title type="class">THING</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf([class('#PersonalConsumption'),class('#HumanConsumption'),class('#Ground'),numberOfElements('5')],class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'</text>\n</description>'.
