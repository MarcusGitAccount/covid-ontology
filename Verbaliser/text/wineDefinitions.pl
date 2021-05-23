'<description iri="#AlsaceRegion">\n<title type="individual">ALSACE REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#AlsaceRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#AlsaceRegion'),namedIndividual('#FrenchRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AlsatianWine">\n<title type="class">ALSATIAN WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#AlsatianWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#AlsaceRegion')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AmericanWine">\n<title type="class">AMERICAN WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#AmericanWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#USRegion')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Anjou">\n<title type="class">ANJOU</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Anjou'),objectIntersectionOf(class('#Loire'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#AnjouRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Anjou'),[objectHasValue(objectProperty('#hasSugar'),namedIndividual('#OffDry')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Delicate')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Rose')),numberOfElements('4')]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Anjou'),namedIndividual('#RoseDAnjou')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AnjouRegion">\n<title type="individual">ANJOU REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#AnjouRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#AnjouRegion'),namedIndividual('#LoireRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ArroyoGrandeRegion">\n<title type="individual">THE ARROYO GRANDE REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#ArroyoGrandeRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#ArroyoGrandeRegion'),namedIndividual('#CaliforniaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#SaucelitoCanyonZinfandel')],namedIndividual('#ArroyoGrandeRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#AustralianRegion">\n<title type="individual">AUSTRALIAN REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#AustralianRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SouthAustraliaRegion'),namedIndividual('#AustralianRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bancroft">\n<title type="individual">BANCROFT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Bancroft')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#BancroftChardonnay'),namedIndividual('#Bancroft')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BancroftChardonnay">\n<title type="individual">BANCROFT CHARDONNAY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Chardonnay'),namedIndividual('#BancroftChardonnay')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#BancroftChardonnay'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#BancroftChardonnay'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#BancroftChardonnay'),namedIndividual('#Bancroft')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#BancroftChardonnay'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#BancroftChardonnay'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Beaujolais">\n<title type="class">BEAUJOLAIS</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Beaujolais'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#BeaujolaisRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Beaujolais'),[objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#GamayGrape')),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Delicate')),numberOfElements('5')]).
subClassOf(class('#Beaujolais'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Beaujolais'),namedIndividual('#ChateauMorgonBeaujolais')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BeaujolaisRegion">\n<title type="individual">BEAUJOLAIS REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#BeaujolaisRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#BeaujolaisRegion'),namedIndividual('#FrenchRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Beringer">\n<title type="individual">BERINGER</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Beringer')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Bordeaux">\n<title type="class">BORDEAUX</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Bordeaux'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#BordeauxRegion')))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Sauternes'),class('#Bordeaux')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BordeauxRegion">\n<title type="individual">BORDEAUX REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#BordeauxRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#BordeauxRegion'),namedIndividual('#FrenchRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#StEmilionRegion'),namedIndividual('#SauterneRegion'),namedIndividual('#MedocRegion')],namedIndividual('#BordeauxRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#BourgogneRegion">\n<title type="individual">BOURGOGNE REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#BourgogneRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#BourgogneRegion'),namedIndividual('#FrenchRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#MeursaultRegion'),namedIndividual('#CotesDOrRegion')],namedIndividual('#BourgogneRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Burgundy">\n<title type="class">BURGUNDY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Burgundy'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#BourgogneRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Burgundy'),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CabernetFranc">\n<title type="class">CABERNET FRANC</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#CabernetFranc'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#CabernetFrancGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CabernetFranc'),[objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Moderate')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red')),numberOfElements('4')]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#CabernetFranc'),namedIndividual('#WhitehallLaneCabernetFranc')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CabernetFrancGrape">\n<title type="individual">THE CABERNET FRANC GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#CabernetFrancGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CabernetSauvignon">\n<title type="class">CABERNET SAUVIGNON</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#CabernetSauvignon'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#CabernetSauvignonGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CabernetSauvignon'),[objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))]).
subClassOf(class('#CabernetSauvignon'),[objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Strong'))),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium')))]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#CabernetSauvignon'),[namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#PageMillWineryCabernetSauvignon'),namedIndividual('#MariettaCabernetSauvignon'),numberOfElements('4')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CabernetSauvignonGrape">\n<title type="individual">THE CABERNET SAUVIGNON GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#CabernetSauvignonGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CaliforniaRegion">\n<title type="individual">CALIFORNIA REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#CaliforniaRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CaliforniaRegion'),namedIndividual('#USRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#SonomaRegion'),namedIndividual('#SantaCruzMountainsRegion'),namedIndividual('#SantaBarbaraRegion'),numberOfElements('8')],namedIndividual('#CaliforniaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CaliforniaWine">\n<title type="class">CALIFORNIA WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#CaliforniaWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#CaliforniaRegion')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CentralCoastRegion">\n<title type="individual">THE CENTRAL COAST REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#CentralCoastRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CentralCoastRegion'),namedIndividual('#CaliforniaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#CentralCoastRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CentralTexasRegion">\n<title type="individual">THE CENTRAL TEXAS REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#CentralTexasRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CentralTexasRegion'),namedIndividual('#TexasRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#StGenevieveTexasWhite'),namedIndividual('#CentralTexasRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Chardonnay">\n<title type="class">CHARDONNAY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Chardonnay'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#ChardonnayGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Chardonnay'),[objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Strong'))),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium')))]).
subClassOf(class('#Chardonnay'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Chardonnay'),[namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#MountadamChardonnay'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay'),numberOfElements('5')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChardonnayGrape">\n<title type="individual">CHARDONNAY GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WineGrape'),namedIndividual('#ChardonnayGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauChevalBlanc">\n<title type="individual">THE CHATEAU CHEVAL BLANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ChateauChevalBlanc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauChevalBlancStEmilion'),namedIndividual('#ChateauChevalBlanc')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauChevalBlancStEmilion">\n<title type="individual">THE CHATEAU CHEVAL BLANC ST EMILION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#StEmilion'),namedIndividual('#ChateauChevalBlancStEmilion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauChevalBlancStEmilion'),namedIndividual('#ChateauChevalBlanc')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauDYchem">\n<title type="individual">THE CHATEAU D YCHEM</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ChateauDYchem')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauDYchemSauterne'),namedIndividual('#ChateauDYchem')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauDYchemSauterne">\n<title type="individual">THE CHATEAU D YCHEM SAUTERNE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Sauternes'),namedIndividual('#ChateauDYchemSauterne')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#ChateauDYchemSauterne'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauDYchemSauterne'),namedIndividual('#ChateauDYchem')).
objectPropertyAssertion(objectProperty('#madeFromGrape'),namedIndividual('#ChateauDYchemSauterne'),[namedIndividual('#SemillonGrape'),namedIndividual('#SauvignonBlancGrape')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauDeMeursault">\n<title type="individual">THE CHATEAU DE MEURSAULT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ChateauDeMeursault')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauDeMeursaultMeursault'),namedIndividual('#ChateauDeMeursault')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauDeMeursaultMeursault">\n<title type="individual">THE CHATEAU DE MEURSAULT MEURSAULT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Meursault'),namedIndividual('#ChateauDeMeursaultMeursault')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#ChateauDeMeursaultMeursault'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauDeMeursaultMeursault'),namedIndividual('#ChateauDeMeursault')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauLafiteRothschild">\n<title type="individual">THE CHATEAU LAFITE ROTHSCHILD</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ChateauLafiteRothschild')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauLafiteRothschildPauillac'),namedIndividual('#ChateauLafiteRothschild')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauLafiteRothschildPauillac">\n<title type="individual">THE CHATEAU LAFITE ROTHSCHILD PAUILLAC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Pauillac'),namedIndividual('#ChateauLafiteRothschildPauillac')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauLafiteRothschildPauillac'),namedIndividual('#ChateauLafiteRothschild')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauMargaux">\n<title type="individual">CHATEAU MARGAUX</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Margaux'),namedIndividual('#ChateauMargaux')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauMargaux'),namedIndividual('#ChateauMargauxWinery')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauMargauxWinery">\n<title type="individual">THE CHATEAU MARGAUX WINERY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ChateauMargauxWinery')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauMargaux'),namedIndividual('#ChateauMargauxWinery')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauMorgon">\n<title type="individual">CHATEAU MORGON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ChateauMorgon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauMorgonBeaujolais'),namedIndividual('#ChateauMorgon')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChateauMorgonBeaujolais">\n<title type="individual">THE CHATEAU MORGON BEAUJOLAIS</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Beaujolais'),namedIndividual('#ChateauMorgonBeaujolais')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauMorgonBeaujolais'),namedIndividual('#ChateauMorgon')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CheninBlanc">\n<title type="class">CHENIN BLANC</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#CheninBlanc'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#CheninBlancGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CheninBlanc'),[objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Moderate')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White'))]).
subClassOf(class('#CheninBlanc'),[objectAllValuesFrom(objectProperty('#hasSugar'),objectOneOf(namedIndividual('#OffDry'),namedIndividual('#Dry'))),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium')))]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#CheninBlanc'),[namedIndividual('#VentanaCheninBlanc'),namedIndividual('#FoxenCheninBlanc')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CheninBlancGrape">\n<title type="individual">THE CHENIN BLANC GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#CheninBlancGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Chianti">\n<title type="class">CHIANTI</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Chianti'),class('#ItalianWine')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Chianti'),[objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#SangioveseGrape')),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#ChiantiRegion')),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),numberOfElements('5')]).
subClassOf(class('#Chianti'),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Medium'),namedIndividual('#Light')))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Chianti'),namedIndividual('#ChiantiClassico')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChiantiClassico">\n<title type="individual">CHIANTI CLASSICO</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Chianti'),namedIndividual('#ChiantiClassico')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#ChiantiClassico'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChiantiClassico'),namedIndividual('#McGuinnesso')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ChiantiRegion">\n<title type="individual">CHIANTI REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#ChiantiRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#ChiantiRegion'),namedIndividual('#ItalianRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ClosDeLaPoussie">\n<title type="individual">THE CLOS DE LA POUSSIE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ClosDeLaPoussie')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ClosDeLaPoussieSancerre'),namedIndividual('#ClosDeLaPoussie')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ClosDeLaPoussieSancerre">\n<title type="individual">THE CLOS DE LA POUSSIE SANCERRE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Sancerre'),namedIndividual('#ClosDeLaPoussieSancerre')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ClosDeLaPoussieSancerre'),namedIndividual('#ClosDeLaPoussie')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ClosDeVougeot">\n<title type="individual">THE CLOS DE VOUGEOT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#ClosDeVougeot')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ClosDeVougeotCotesDOr'),namedIndividual('#ClosDeVougeot')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ClosDeVougeotCotesDOr">\n<title type="individual">THE CLOS DE VOUGEOT COTES D OR</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CotesDOr'),namedIndividual('#ClosDeVougeotCotesDOr')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ClosDeVougeotCotesDOr'),namedIndividual('#ClosDeVougeot')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CongressSprings">\n<title type="individual">CONGRESS SPRINGS</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#CongressSprings')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CongressSpringsSemillon'),namedIndividual('#CongressSprings')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CongressSpringsSemillon">\n<title type="individual">THE CONGRESS SPRINGS SEMILLON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Semillon'),namedIndividual('#CongressSpringsSemillon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#CongressSpringsSemillon'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#CongressSpringsSemillon'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CongressSpringsSemillon'),namedIndividual('#CongressSprings')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#CongressSpringsSemillon'),namedIndividual('#Dry')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Corbans">\n<title type="individual">CORBANS</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Corbans')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),[namedIndividual('#CorbansSauvignonBlanc'),namedIndividual('#CorbansPrivateBinSauvignonBlanc'),namedIndividual('#CorbansDryWhiteRiesling')],namedIndividual('#Corbans')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CorbansDryWhiteRiesling">\n<title type="individual">THE CORBANS DRY WHITE RIESLING</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Riesling'),namedIndividual('#CorbansDryWhiteRiesling')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#CorbansDryWhiteRiesling'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#CorbansDryWhiteRiesling'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CorbansDryWhiteRiesling'),namedIndividual('#Corbans')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#CorbansDryWhiteRiesling'),namedIndividual('#OffDry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CorbansDryWhiteRiesling'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CorbansPrivateBinSauvignonBlanc">\n<title type="individual">THE CORBANS PRIVATE BIN SAUVIGNON BLANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#SauvignonBlanc'),namedIndividual('#CorbansPrivateBinSauvignonBlanc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#CorbansPrivateBinSauvignonBlanc'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#CorbansPrivateBinSauvignonBlanc'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CorbansPrivateBinSauvignonBlanc'),namedIndividual('#Corbans')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#CorbansPrivateBinSauvignonBlanc'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CorbansPrivateBinSauvignonBlanc'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CorbansSauvignonBlanc">\n<title type="individual">THE CORBANS SAUVIGNON BLANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#SauvignonBlanc'),namedIndividual('#CorbansSauvignonBlanc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#CorbansSauvignonBlanc'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#CorbansSauvignonBlanc'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CorbansSauvignonBlanc'),namedIndividual('#Corbans')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#CorbansSauvignonBlanc'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CorbansSauvignonBlanc'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CortonMontrachet">\n<title type="individual">CORTON MONTRACHET</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#CortonMontrachet')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CortonMontrachetWhiteBurgundy'),namedIndividual('#CortonMontrachet')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CortonMontrachetWhiteBurgundy">\n<title type="individual">THE CORTON MONTRACHET WHITE BURGUNDY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WhiteBurgundy'),namedIndividual('#CortonMontrachetWhiteBurgundy')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#CortonMontrachetWhiteBurgundy'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#CortonMontrachetWhiteBurgundy'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CortonMontrachetWhiteBurgundy'),namedIndividual('#CortonMontrachet')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#CortonMontrachetWhiteBurgundy'),namedIndividual('#Dry')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CotesDOr">\n<title type="class">COTES D OR</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#CotesDOr'),objectIntersectionOf(class('#RedBurgundy'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#CotesDOrRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#CotesDOr'),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Moderate'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#CotesDOr'),namedIndividual('#ClosDeVougeotCotesDOr')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CotesDOrRegion">\n<title type="individual">THE COTES D OR REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#CotesDOrRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CotesDOrRegion'),namedIndividual('#BourgogneRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Cotturi">\n<title type="individual">COTTURI</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Cotturi')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CotturiZinfandel'),namedIndividual('#Cotturi')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#CotturiZinfandel">\n<title type="individual">COTTURI ZINFANDEL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Zinfandel'),namedIndividual('#CotturiZinfandel')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#CotturiZinfandel'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#CotturiZinfandel'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#CotturiZinfandel'),namedIndividual('#Cotturi')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#CotturiZinfandel'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CotturiZinfandel'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DAnjou">\n<title type="individual">DANJOU</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#DAnjou')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#RoseDAnjou'),namedIndividual('#DAnjou')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Delicate">\n<title type="individual">DELICATE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineFlavor'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Delicate')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasFlavor'),[namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#MountadamRiesling'),numberOfElements('5')],namedIndividual('#Delicate')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Delicate'),namedIndividual('#Moderate'),namedIndividual('#Strong')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DessertWine">\n<title type="class">DESSERT WINE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#DessertWine'),class('#Wine')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#DessertWine'),objectAllValuesFrom(objectProperty('#hasSugar'),objectOneOf(namedIndividual('#OffDry'),namedIndividual('#Sweet')))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#SweetRiesling'),class('#DessertWine')).
classAssertion(class('#DessertWine'),namedIndividual('#WhitehallLanePrimavera')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Dry">\n<title type="individual">DRY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineSugar'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Dry')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasSugar'),[namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#StGenevieveTexasWhite'),numberOfElements('35')],namedIndividual('#Dry')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Dry'),namedIndividual('#OffDry'),namedIndividual('#Sweet')).
'</subgroup>'.
'<subgroup id="Distinctions">'.
differentIndividuals(namedIndividual('#Dry'),[namedIndividual('#Sweet'),namedIndividual('#OffDry')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DryRedWine">\n<title type="class">DRY RED WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#DryRedWine'),objectIntersectionOf(class('#DryWine'),class('#RedWine'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DryRiesling">\n<title type="class">DRY RIESLING</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#DryRiesling'),objectIntersectionOf(class('#Riesling'),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#DryRiesling'),[objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Delicate')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White'))]).
subClassOf(class('#DryRiesling'),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Medium'),namedIndividual('#Light')))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#DryRiesling'),namedIndividual('#MountadamRiesling')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DryWhiteWine">\n<title type="class">DRY WHITE WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#DryWhiteWine'),objectIntersectionOf(class('#DryWine'),class('#WhiteWine'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#DryWine">\n<title type="class">DRY WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#DryWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#EarlyHarvest">\n<title type="class">EARLY HARVEST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#EarlyHarvest'),class('#Wine')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#EarlyHarvest'),objectAllValuesFrom(objectProperty('#hasSugar'),objectOneOf(namedIndividual('#OffDry'),namedIndividual('#Dry')))).
'</subgroup>'.
'<subgroup id="Distinctions">'.
disjointClasses(class('#EarlyHarvest'),class('#LateHarvest')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#EdnaValleyRegion">\n<title type="individual">THE EDNA VALLEY REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#EdnaValleyRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#EdnaValleyRegion'),namedIndividual('#CaliforniaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay')],namedIndividual('#EdnaValleyRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Elyse">\n<title type="individual">ELYSE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Elyse')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ElyseZinfandel'),namedIndividual('#Elyse')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ElyseZinfandel">\n<title type="individual">ELYSE ZINFANDEL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Zinfandel'),namedIndividual('#ElyseZinfandel')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#ElyseZinfandel'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#ElyseZinfandel'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ElyseZinfandel'),namedIndividual('#Elyse')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#ElyseZinfandel'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#ElyseZinfandel'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Forman">\n<title type="individual">FORMAN</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Forman')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),[namedIndividual('#FormanChardonnay'),namedIndividual('#FormanCabernetSauvignon')],namedIndividual('#Forman')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FormanCabernetSauvignon">\n<title type="individual">THE FORMAN CABERNET SAUVIGNON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CabernetSauvignon'),namedIndividual('#FormanCabernetSauvignon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#FormanCabernetSauvignon'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#FormanCabernetSauvignon'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#FormanCabernetSauvignon'),namedIndividual('#Forman')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#FormanCabernetSauvignon'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#FormanCabernetSauvignon'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FormanChardonnay">\n<title type="individual">FORMAN CHARDONNAY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Chardonnay'),namedIndividual('#FormanChardonnay')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#FormanChardonnay'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#FormanChardonnay'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#FormanChardonnay'),namedIndividual('#Forman')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#FormanChardonnay'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#FormanChardonnay'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Foxen">\n<title type="individual">FOXEN</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Foxen')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#FoxenCheninBlanc'),namedIndividual('#Foxen')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FoxenCheninBlanc">\n<title type="individual">THE FOXEN CHENIN BLANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CheninBlanc'),namedIndividual('#FoxenCheninBlanc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#FoxenCheninBlanc'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#FoxenCheninBlanc'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#FoxenCheninBlanc'),namedIndividual('#Foxen')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#FoxenCheninBlanc'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#FoxenCheninBlanc'),namedIndividual('#SantaBarbaraRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FrenchRegion">\n<title type="individual">FRENCH REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#FrenchRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#LoireRegion'),namedIndividual('#BourgogneRegion'),namedIndividual('#BordeauxRegion'),numberOfElements('5')],namedIndividual('#FrenchRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FrenchWine">\n<title type="class">FRENCH WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#FrenchWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#FrenchRegion')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Full">\n<title type="individual">FULL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineBody'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Full')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),[namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),numberOfElements('13')],namedIndividual('#Full')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Full'),namedIndividual('#Light'),namedIndividual('#Medium')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#FullBodiedWine">\n<title type="class">FULL BODIED WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#FullBodiedWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#hasBody'),namedIndividual('#Full')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Gamay">\n<title type="class">GAMAY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Gamay'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#GamayGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GamayGrape">\n<title type="individual">GAMAY GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WineGrape'),namedIndividual('#GamayGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GaryFarrell">\n<title type="individual">GARY FARRELL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#GaryFarrell')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#GaryFarrellMerlot'),namedIndividual('#GaryFarrell')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GaryFarrellMerlot">\n<title type="individual">THE GARY FARRELL MERLOT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Merlot'),namedIndividual('#GaryFarrellMerlot')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#GaryFarrellMerlot'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#GaryFarrellMerlot'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#GaryFarrellMerlot'),namedIndividual('#GaryFarrell')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#GaryFarrellMerlot'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#GaryFarrellMerlot'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GermanWine">\n<title type="class">GERMAN WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#GermanWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#GermanyRegion')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#GermanyRegion">\n<title type="individual">GERMANY REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#GermanyRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling')],namedIndividual('#GermanyRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Handley">\n<title type="individual">HANDLEY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Handley')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#IceWine">\n<title type="class">ICE WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#IceWine'),objectIntersectionOf(class('#DessertWine'),class('#LateHarvest'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#IceWine'),[objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Strong'))),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium')))]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#IceWine'),namedIndividual('#SelaksIceWine')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ItalianRegion">\n<title type="individual">ITALIAN REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#ItalianRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#ChiantiRegion'),namedIndividual('#ItalianRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ItalianWine">\n<title type="class">ITALIAN WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#ItalianWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#ItalianRegion')))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Chianti'),class('#ItalianWine')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#KalinCellars">\n<title type="individual">KALIN CELLARS</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#KalinCellars')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#KalinCellarsSemillon'),namedIndividual('#KalinCellars')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#KalinCellarsSemillon">\n<title type="individual">THE KALIN CELLARS SEMILLON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Semillon'),namedIndividual('#KalinCellarsSemillon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#KalinCellarsSemillon'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#KalinCellarsSemillon'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#KalinCellarsSemillon'),namedIndividual('#KalinCellars')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#KalinCellarsSemillon'),namedIndividual('#Dry')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#KathrynKennedy">\n<title type="individual">KATHRYN KENNEDY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#KathrynKennedy')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#KathrynKennedyLateral'),namedIndividual('#KathrynKennedy')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#KathrynKennedyLateral">\n<title type="individual">THE KATHRYN KENNEDY LATERAL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Meritage'),namedIndividual('#KathrynKennedyLateral')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#KathrynKennedyLateral'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#KathrynKennedyLateral'),namedIndividual('#Delicate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#KathrynKennedyLateral'),namedIndividual('#KathrynKennedy')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#KathrynKennedyLateral'),namedIndividual('#Dry')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LaneTanner">\n<title type="individual">LANE TANNER</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#LaneTanner')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#LaneTannerPinotNoir'),namedIndividual('#LaneTanner')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LaneTannerPinotNoir">\n<title type="individual">THE LANE TANNER PINOT NOIR</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#PinotNoir'),namedIndividual('#LaneTannerPinotNoir')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#LaneTannerPinotNoir'),namedIndividual('#Light')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#LaneTannerPinotNoir'),namedIndividual('#Delicate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#LaneTannerPinotNoir'),namedIndividual('#LaneTanner')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#LaneTannerPinotNoir'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#LaneTannerPinotNoir'),namedIndividual('#SantaBarbaraRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LateHarvest">\n<title type="class">LATE HARVEST</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#LateHarvest'),class('#Wine')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#LateHarvest'),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Sweet'))).
subClassOf(class('#LateHarvest'),objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Strong')))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Sauternes'),class('#LateHarvest')).
'</subgroup>'.
'<subgroup id="Distinctions">'.
disjointClasses(class('#EarlyHarvest'),class('#LateHarvest')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Light">\n<title type="individual">LIGHT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineBody'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Light')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),[namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#LongridgeMerlot'),namedIndividual('#LaneTannerPinotNoir')],namedIndividual('#Light')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Full'),namedIndividual('#Light'),namedIndividual('#Medium')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Loire">\n<title type="class">LOIRE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Loire'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#LoireRegion')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LoireRegion">\n<title type="individual">LOIRE REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#LoireRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#LoireRegion'),namedIndividual('#FrenchRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#ToursRegion'),namedIndividual('#SancerreRegion'),namedIndividual('#MuscadetRegion'),numberOfElements('4')],namedIndividual('#LoireRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Longridge">\n<title type="individual">LONGRIDGE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Longridge')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#LongridgeMerlot'),namedIndividual('#Longridge')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#LongridgeMerlot">\n<title type="individual">LONGRIDGE MERLOT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Merlot'),namedIndividual('#LongridgeMerlot')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#LongridgeMerlot'),namedIndividual('#Light')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#LongridgeMerlot'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#LongridgeMerlot'),namedIndividual('#Longridge')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#LongridgeMerlot'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#LongridgeMerlot'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MalbecGrape">\n<title type="individual">MALBEC GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#MalbecGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Margaux">\n<title type="class">MARGAUX</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Margaux'),objectIntersectionOf(class('#Medoc'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#MargauxRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Margaux'),[objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#MerlotGrape')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Delicate'))]).
subClassOf(class('#Margaux'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Margaux'),namedIndividual('#ChateauMargaux')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MargauxRegion">\n<title type="individual">MARGAUX REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#MargauxRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MargauxRegion'),namedIndividual('#MedocRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Marietta">\n<title type="individual">MARIETTA</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Marietta')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),[namedIndividual('#MariettaZinfandel'),namedIndividual('#MariettaPetiteSyrah'),namedIndividual('#MariettaOldVinesRed'),numberOfElements('4')],namedIndividual('#Marietta')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MariettaCabernetSauvignon">\n<title type="individual">THE MARIETTA CABERNET SAUVIGNON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CabernetSauvignon'),namedIndividual('#MariettaCabernetSauvignon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MariettaCabernetSauvignon'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MariettaCabernetSauvignon'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MariettaCabernetSauvignon'),namedIndividual('#Marietta')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MariettaCabernetSauvignon'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MariettaCabernetSauvignon'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MariettaOldVinesRed">\n<title type="individual">THE MARIETTA OLD VINES RED</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#RedTableWine'),namedIndividual('#MariettaOldVinesRed')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MariettaOldVinesRed'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MariettaOldVinesRed'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MariettaOldVinesRed'),namedIndividual('#Marietta')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MariettaOldVinesRed'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MariettaOldVinesRed'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MariettaPetiteSyrah">\n<title type="individual">THE MARIETTA PETITE SYRAH</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#PetiteSyrah'),namedIndividual('#MariettaPetiteSyrah')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MariettaPetiteSyrah'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MariettaPetiteSyrah'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MariettaPetiteSyrah'),namedIndividual('#Marietta')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MariettaPetiteSyrah'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MariettaPetiteSyrah'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MariettaZinfandel">\n<title type="individual">MARIETTA ZINFANDEL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Zinfandel'),namedIndividual('#MariettaZinfandel')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MariettaZinfandel'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MariettaZinfandel'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MariettaZinfandel'),namedIndividual('#Marietta')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MariettaZinfandel'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MariettaZinfandel'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#McGuinnesso">\n<title type="individual">MC GUINNESSO</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#McGuinnesso')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChiantiClassico'),namedIndividual('#McGuinnesso')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Medium">\n<title type="individual">MEDIUM</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineBody'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Medium')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),[namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#StonleighSauvignonBlanc'),numberOfElements('25')],namedIndividual('#Medium')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Full'),namedIndividual('#Light'),namedIndividual('#Medium')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Medoc">\n<title type="class">MEDOC</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Medoc'),objectIntersectionOf(class('#Bordeaux'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#MedocRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Medoc'),[objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MedocRegion">\n<title type="individual">MEDOC REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#MedocRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MedocRegion'),namedIndividual('#BordeauxRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#PauillacRegion'),namedIndividual('#MargauxRegion')],namedIndividual('#MedocRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MendocinoRegion">\n<title type="individual">MENDOCINO REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#MendocinoRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#adjacentRegion'),namedIndividual('#MendocinoRegion'),namedIndividual('#SonomaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MendocinoRegion'),namedIndividual('#CaliforniaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Meritage">\n<title type="class">MERITAGE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Meritage'),objectIntersectionOf(class('#Wine'),objectAllValuesFrom(objectProperty('#madeFromGrape'),objectOneOf(namedIndividual('#CabernetSauvignonGrape'),namedIndividual('#CabernetFrancGrape'),namedIndividual('#PetiteVerdotGrape'),namedIndividual('#MalbecGrape'),namedIndividual('#MerlotGrape'))),objectMinCardinality('2',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Meritage'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Meritage'),namedIndividual('#KathrynKennedyLateral')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Merlot">\n<title type="class">MERLOT</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Merlot'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#MerlotGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Merlot'),[objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))]).
subClassOf(class('#Merlot'),[objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Delicate'))),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Medium'),namedIndividual('#Light')))]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Merlot'),[namedIndividual('#LongridgeMerlot'),namedIndividual('#GaryFarrellMerlot')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MerlotGrape">\n<title type="individual">MERLOT GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#MerlotGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Meursault">\n<title type="class">MEURSAULT</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Meursault'),objectIntersectionOf(class('#WhiteBurgundy'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#MeursaultRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Meursault'),objectHasValue(objectProperty('#hasBody'),namedIndividual('#Full'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Meursault'),namedIndividual('#ChateauDeMeursaultMeursault')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MeursaultRegion">\n<title type="individual">MEURSAULT REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#MeursaultRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MeursaultRegion'),namedIndividual('#BourgogneRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Moderate">\n<title type="individual">MODERATE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineFlavor'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Moderate')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasFlavor'),[namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#StGenevieveTexasWhite'),numberOfElements('26')],namedIndividual('#Moderate')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Delicate'),namedIndividual('#Moderate'),namedIndividual('#Strong')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountEdenVineyard">\n<title type="individual">THE MOUNT EDEN VINEYARD</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#MountEdenVineyard')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),[namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay')],namedIndividual('#MountEdenVineyard')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountEdenVineyardEdnaValleyChardonnay">\n<title type="individual">THE MOUNT EDEN VINEYARD EDNA VALLEY CHARDONNAY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Chardonnay'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay'),namedIndividual('#MountEdenVineyard')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MountEdenVineyardEdnaValleyChardonnay'),namedIndividual('#EdnaValleyRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountEdenVineyardEstatePinotNoir">\n<title type="individual">THE MOUNT EDEN VINEYARD ESTATE PINOT NOIR</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#PinotNoir'),namedIndividual('#MountEdenVineyardEstatePinotNoir')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#MountEdenVineyard')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#EdnaValleyRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Mountadam">\n<title type="individual">MOUNTADAM</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Mountadam')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),[namedIndividual('#MountadamRiesling'),namedIndividual('#MountadamPinotNoir'),namedIndividual('#MountadamChardonnay')],namedIndividual('#Mountadam')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountadamChardonnay">\n<title type="individual">MOUNTADAM CHARDONNAY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Chardonnay'),namedIndividual('#MountadamChardonnay')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MountadamChardonnay'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MountadamChardonnay'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MountadamChardonnay'),namedIndividual('#Mountadam')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MountadamChardonnay'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MountadamChardonnay'),namedIndividual('#SouthAustraliaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountadamPinotNoir">\n<title type="individual">THE MOUNTADAM PINOT NOIR</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#PinotNoir'),namedIndividual('#MountadamPinotNoir')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MountadamPinotNoir'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MountadamPinotNoir'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MountadamPinotNoir'),namedIndividual('#Mountadam')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MountadamPinotNoir'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MountadamPinotNoir'),namedIndividual('#SouthAustraliaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MountadamRiesling">\n<title type="individual">MOUNTADAM RIESLING</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#DryRiesling'),namedIndividual('#MountadamRiesling')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#MountadamRiesling'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#MountadamRiesling'),namedIndividual('#Delicate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#MountadamRiesling'),namedIndividual('#Mountadam')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#MountadamRiesling'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MountadamRiesling'),namedIndividual('#SouthAustraliaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Muscadet">\n<title type="class">MUSCADET</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Muscadet'),objectIntersectionOf(class('#Loire'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#MuscadetRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Muscadet'),[objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#PinotBlancGrape')),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Delicate')),numberOfElements('4')]).
subClassOf(class('#Muscadet'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Muscadet'),namedIndividual('#SevreEtMaineMuscadet')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#MuscadetRegion">\n<title type="individual">MUSCADET REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#MuscadetRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#MuscadetRegion'),namedIndividual('#LoireRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NapaRegion">\n<title type="individual">NAPA REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#NapaRegion'),namedIndividual('#CaliforniaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#SeanThackreySiriusPetiteSyrah'),numberOfElements('8')],namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#NewZealandRegion">\n<title type="individual">THE NEW ZEALAND REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#SelaksIceWine'),numberOfElements('7')],namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#OffDry">\n<title type="individual">OFF DRY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineSugar'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#OffDry')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasSugar'),[namedIndividual('#VentanaCheninBlanc'),namedIndividual('#CorbansDryWhiteRiesling')],namedIndividual('#OffDry')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Dry'),namedIndividual('#OffDry'),namedIndividual('#Sweet')).
'</subgroup>'.
'<subgroup id="Distinctions">'.
differentIndividuals(namedIndividual('#Dry'),namedIndividual('#OffDry')).
differentIndividuals(namedIndividual('#OffDry'),namedIndividual('#Sweet')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PageMillWinery">\n<title type="individual">THE PAGE MILL WINERY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#PageMillWinery')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#PageMillWineryCabernetSauvignon'),namedIndividual('#PageMillWinery')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PageMillWineryCabernetSauvignon">\n<title type="individual">THE PAGE MILL WINERY CABERNET SAUVIGNON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CabernetSauvignon'),namedIndividual('#PageMillWineryCabernetSauvignon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#PageMillWineryCabernetSauvignon'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#PageMillWineryCabernetSauvignon'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#PageMillWineryCabernetSauvignon'),namedIndividual('#PageMillWinery')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#PageMillWineryCabernetSauvignon'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#PageMillWineryCabernetSauvignon'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Pauillac">\n<title type="class">PAUILLAC</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Pauillac'),objectIntersectionOf(class('#Medoc'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#PauillacRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Pauillac'),[objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#CabernetSauvignonGrape')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Strong')),objectHasValue(objectProperty('#hasBody'),namedIndividual('#Full'))]).
subClassOf(class('#Pauillac'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Pauillac'),namedIndividual('#ChateauLafiteRothschildPauillac')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PauillacRegion">\n<title type="individual">PAUILLAC REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#PauillacRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#PauillacRegion'),namedIndividual('#MedocRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PeterMccoy">\n<title type="individual">PETER MCCOY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#PeterMccoy')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#PeterMccoy')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PeterMccoyChardonnay">\n<title type="individual">THE PETER MCCOY CHARDONNAY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Chardonnay'),namedIndividual('#PeterMccoyChardonnay')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#PeterMccoy')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PetiteSyrah">\n<title type="class">PETITE SYRAH</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#PetiteSyrah'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#PetiteSyrahGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PetiteSyrah'),[objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))]).
subClassOf(class('#PetiteSyrah'),[objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Strong'))),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium')))]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#PetiteSyrah'),[namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#MariettaPetiteSyrah')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PetiteSyrahGrape">\n<title type="individual">THE PETITE SYRAH GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WineGrape'),namedIndividual('#PetiteSyrahGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PetiteVerdotGrape">\n<title type="individual">THE PETITE VERDOT GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#PetiteVerdotGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PinotBlanc">\n<title type="class">PINOT BLANC</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#PinotBlanc'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#PinotBlancGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PinotBlanc'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PinotBlancGrape">\n<title type="individual">THE PINOT BLANC GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#PinotBlancGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PinotNoir">\n<title type="class">PINOT NOIR</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#PinotNoir'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#PinotNoirGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#PinotNoir'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#PinotNoir'),[namedIndividual('#MountadamPinotNoir'),namedIndividual('#MountEdenVineyardEstatePinotNoir'),namedIndividual('#LaneTannerPinotNoir')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PinotNoirGrape">\n<title type="individual">THE PINOT NOIR GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WineGrape'),namedIndividual('#PinotNoirGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Port">\n<title type="class">PORT</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Port'),class('#RedWine')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Port'),[objectHasValue(objectProperty('#locatedIn'),namedIndividual('#PortugalRegion')),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Sweet')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Strong')),numberOfElements('4')]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Port'),namedIndividual('#TaylorPort')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PortugalRegion">\n<title type="individual">PORTUGAL REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#PortugalRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PulignyMontrachet">\n<title type="individual">PULIGNY MONTRACHET</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#PulignyMontrachet')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#PulignyMontrachetWhiteBurgundy'),namedIndividual('#PulignyMontrachet')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#PulignyMontrachetWhiteBurgundy">\n<title type="individual">THE PULIGNY MONTRACHET WHITE BURGUNDY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WhiteBurgundy'),namedIndividual('#PulignyMontrachetWhiteBurgundy')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#PulignyMontrachetWhiteBurgundy'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#PulignyMontrachetWhiteBurgundy'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#PulignyMontrachetWhiteBurgundy'),namedIndividual('#PulignyMontrachet')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#PulignyMontrachetWhiteBurgundy'),namedIndividual('#Dry')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Red">\n<title type="individual">RED</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineColor'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Red')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Red'),namedIndividual('#Rose'),namedIndividual('#White')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RedBordeaux">\n<title type="class">RED BORDEAUX</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#RedBordeaux'),objectIntersectionOf(class('#Bordeaux'),class('#RedWine'))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RedBordeaux'),objectAllValuesFrom(objectProperty('#madeFromGrape'),objectOneOf(namedIndividual('#CabernetSauvignonGrape'),namedIndividual('#MerlotGrape')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RedBurgundy">\n<title type="class">RED BURGUNDY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#RedBurgundy'),objectIntersectionOf(class('#Burgundy'),class('#RedWine'))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#RedBurgundy'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
subClassOf(class('#RedBurgundy'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#PinotNoirGrape'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RedTableWine">\n<title type="class">RED TABLE WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#RedTableWine'),objectIntersectionOf(class('#TableWine'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red')))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#RedTableWine'),namedIndividual('#MariettaOldVinesRed')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RedWine">\n<title type="class">RED WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#RedWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red')))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf(class('#Port'),class('#RedWine')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Region">\n<title type="class">REGION</title>\n<text>'.
'<subgroup id="Description">'.
objectPropertyRange([objectProperty('#locatedIn'),objectProperty('#adjacentRegion')],class('#Region')).
objectPropertyDomain(objectProperty('#adjacentRegion'),class('#Region')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Region'),[namedIndividual('#USRegion'),namedIndividual('#ToursRegion'),namedIndividual('#TexasRegion'),numberOfElements('36')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Riesling">\n<title type="class">RIESLING</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Riesling'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#RieslingGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Riesling'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Riesling'),namedIndividual('#CorbansDryWhiteRiesling')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RieslingGrape">\n<title type="individual">RIESLING GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WineGrape'),namedIndividual('#RieslingGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Rose">\n<title type="individual">ROSE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineColor'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Rose')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Red'),namedIndividual('#Rose'),namedIndividual('#White')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RoseDAnjou">\n<title type="individual">THE ROSE D ANJOU</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Anjou'),namedIndividual('#RoseDAnjou')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#RoseDAnjou'),namedIndividual('#DAnjou')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#RoseWine">\n<title type="class">ROSE WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#RoseWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Rose')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sancerre">\n<title type="class">SANCERRE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Sancerre'),objectIntersectionOf(class('#Loire'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#SancerreRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Sancerre'),[objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#SauvignonBlancGrape')),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#OffDry')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Delicate')),numberOfElements('4')]).
subClassOf(class('#Sancerre'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Sancerre'),namedIndividual('#ClosDeLaPoussieSancerre')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SancerreRegion">\n<title type="individual">SANCERRE REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#SancerreRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SancerreRegion'),namedIndividual('#LoireRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SangioveseGrape">\n<title type="individual">SANGIOVESE GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WineGrape'),namedIndividual('#SangioveseGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SantaBarbaraRegion">\n<title type="individual">THE SANTA BARBARA REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#SantaBarbaraRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SantaBarbaraRegion'),namedIndividual('#CaliforniaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#LaneTannerPinotNoir'),namedIndividual('#FoxenCheninBlanc')],namedIndividual('#SantaBarbaraRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SantaCruzMountainVineyard">\n<title type="individual">THE SANTA CRUZ MOUNTAIN VINEYARD</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#SantaCruzMountainVineyard')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#SantaCruzMountainVineyard')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SantaCruzMountainVineyardCabernetSauvignon">\n<title type="individual">THE SANTA CRUZ MOUNTAIN VINEYARD CABERNET SAUVIGNON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CabernetSauvignon'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#SantaCruzMountainVineyard')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#SantaCruzMountainsRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SantaCruzMountainsRegion">\n<title type="individual">THE SANTA CRUZ MOUNTAINS REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#SantaCruzMountainsRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#SantaCruzMountainsRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SantaCruzMountainsRegion'),namedIndividual('#CaliforniaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SaucelitoCanyon">\n<title type="individual">SAUCELITO CANYON</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#SaucelitoCanyon')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),[namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#SaucelitoCanyonZinfandel')],namedIndividual('#SaucelitoCanyon')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SaucelitoCanyonZinfandel">\n<title type="individual">THE SAUCELITO CANYON ZINFANDEL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Zinfandel'),namedIndividual('#SaucelitoCanyonZinfandel')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SaucelitoCanyonZinfandel'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SaucelitoCanyonZinfandel'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SaucelitoCanyonZinfandel'),namedIndividual('#SaucelitoCanyon')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#SaucelitoCanyonZinfandel'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SaucelitoCanyonZinfandel'),namedIndividual('#ArroyoGrandeRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SaucelitoCanyonZinfandel1998">\n<title type="individual">THE SAUCELITO CANYON ZINFANDEL1998</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Zinfandel'),namedIndividual('#SaucelitoCanyonZinfandel1998')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#SaucelitoCanyon')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#hasVintageYear'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#Year1998')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#ArroyoGrandeRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SauterneRegion">\n<title type="individual">SAUTERNE REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#SauterneRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SauterneRegion'),namedIndividual('#BordeauxRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sauternes">\n<title type="class">SAUTERNES</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Sauternes'),[class('#LateHarvest'),class('#Bordeaux')]).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Sauternes'),[objectHasValue(objectProperty('#locatedIn'),namedIndividual('#SauterneRegion')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White')),objectHasValue(objectProperty('#hasBody'),namedIndividual('#Medium'))]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Sauternes'),namedIndividual('#ChateauDYchemSauterne')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SauvignonBlanc">\n<title type="class">SAUVIGNON BLANC</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#SauvignonBlanc'),objectIntersectionOf(class('#SemillonOrSauvignonBlanc'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#SauvignonBlancGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#SauvignonBlanc'),[namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#CorbansSauvignonBlanc'),numberOfElements('4')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SauvignonBlancGrape">\n<title type="individual">THE SAUVIGNON BLANC GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#SauvignonBlancGrape')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#madeFromGrape'),namedIndividual('#ChateauDYchemSauterne'),namedIndividual('#SauvignonBlancGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SchlossRothermel">\n<title type="individual">SCHLOSS ROTHERMEL</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#SchlossRothermel')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermel')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SchlossRothermelTrochenbierenausleseRiesling">\n<title type="individual">THE SCHLOSS ROTHERMEL TROCHENBIERENAUSLESE RIESLING</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#SweetRiesling'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermel')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#Sweet')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#GermanyRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SchlossVolrad">\n<title type="individual">SCHLOSS VOLRAD</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#SchlossVolrad')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossVolrad')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SchlossVolradTrochenbierenausleseRiesling">\n<title type="individual">THE SCHLOSS VOLRAD TROCHENBIERENAUSLESE RIESLING</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#SweetRiesling'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossVolrad')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#Sweet')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#GermanyRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SeanThackrey">\n<title type="individual">SEAN THACKREY</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#SeanThackrey')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#SeanThackrey')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SeanThackreySiriusPetiteSyrah">\n<title type="individual">THE SEAN THACKREY SIRIUS PETITE SYRAH</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#PetiteSyrah'),namedIndividual('#SeanThackreySiriusPetiteSyrah')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#SeanThackrey')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Selaks">\n<title type="individual">SELAKS</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Selaks')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),[namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#SelaksIceWine')],namedIndividual('#Selaks')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SelaksIceWine">\n<title type="individual">THE SELAKS ICE WINE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#IceWine'),namedIndividual('#SelaksIceWine')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SelaksIceWine'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasColor'),namedIndividual('#SelaksIceWine'),namedIndividual('#White')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SelaksIceWine'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SelaksIceWine'),namedIndividual('#Selaks')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SelaksIceWine'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SelaksSauvignonBlanc">\n<title type="individual">THE SELAKS SAUVIGNON BLANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#SauvignonBlanc'),namedIndividual('#SelaksSauvignonBlanc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#Selaks')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SelaksSauvignonBlanc'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Semillon">\n<title type="class">SEMILLON</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Semillon'),objectIntersectionOf(class('#SemillonOrSauvignonBlanc'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#SemillonGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Semillon'),[namedIndividual('#KalinCellarsSemillon'),namedIndividual('#CongressSpringsSemillon')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SemillonGrape">\n<title type="individual">SEMILLON GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineGrape'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#SemillonGrape')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#madeFromGrape'),namedIndividual('#ChateauDYchemSauterne'),namedIndividual('#SemillonGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SemillonOrSauvignonBlanc">\n<title type="class">SEMILLON OR SAUVIGNON BLANC</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#SemillonOrSauvignonBlanc'),objectIntersectionOf(class('#Wine'),objectAllValuesFrom(objectProperty('#madeFromGrape'),objectOneOf(namedIndividual('#SemillonGrape'),namedIndividual('#SauvignonBlancGrape'))))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SemillonOrSauvignonBlanc'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White'))).
subClassOf(class('#SemillonOrSauvignonBlanc'),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SevreEtMaine">\n<title type="individual">THE SEVRE ET MAINE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#SevreEtMaine')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SevreEtMaineMuscadet'),namedIndividual('#SevreEtMaine')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SevreEtMaineMuscadet">\n<title type="individual">THE SEVRE ET MAINE MUSCADET</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Muscadet'),namedIndividual('#SevreEtMaineMuscadet')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#SevreEtMaineMuscadet'),namedIndividual('#SevreEtMaine')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SonomaRegion">\n<title type="individual">SONOMA REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#adjacentRegion'),namedIndividual('#MendocinoRegion'),namedIndividual('#SonomaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SonomaRegion'),namedIndividual('#CaliforniaRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#PeterMccoyChardonnay'),namedIndividual('#MariettaZinfandel'),namedIndividual('#MariettaPetiteSyrah'),numberOfElements('7')],namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SouthAustraliaRegion">\n<title type="individual">THE SOUTH AUSTRALIA REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#SouthAustraliaRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SouthAustraliaRegion'),namedIndividual('#AustralianRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#MountadamRiesling'),namedIndividual('#MountadamPinotNoir'),namedIndividual('#MountadamChardonnay')],namedIndividual('#SouthAustraliaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StEmilion">\n<title type="class">ST EMILION</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#StEmilion'),objectIntersectionOf(class('#Bordeaux'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#StEmilionRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#StEmilion'),[objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#CabernetSauvignonGrape')),objectHasValue(objectProperty('#hasFlavor'),namedIndividual('#Strong')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))]).
subClassOf(class('#StEmilion'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#StEmilion'),namedIndividual('#ChateauChevalBlancStEmilion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StEmilionRegion">\n<title type="individual">THE ST EMILION REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#StEmilionRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#StEmilionRegion'),namedIndividual('#BordeauxRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StGenevieve">\n<title type="individual">ST GENEVIEVE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#StGenevieve')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#StGenevieveTexasWhite'),namedIndividual('#StGenevieve')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StGenevieveTexasWhite">\n<title type="individual">THE ST GENEVIEVE TEXAS WHITE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WhiteWine'),namedIndividual('#StGenevieveTexasWhite')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#StGenevieveTexasWhite'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#StGenevieveTexasWhite'),namedIndividual('#StGenevieve')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#StGenevieveTexasWhite'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#StGenevieveTexasWhite'),namedIndividual('#CentralTexasRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Stonleigh">\n<title type="individual">STONLEIGH</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Stonleigh')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#Stonleigh')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#StonleighSauvignonBlanc">\n<title type="individual">THE STONLEIGH SAUVIGNON BLANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#SauvignonBlanc'),namedIndividual('#StonleighSauvignonBlanc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#Delicate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#Stonleigh')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#NewZealandRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Strong">\n<title type="individual">STRONG</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineFlavor'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Strong')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasFlavor'),[namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),numberOfElements('12')],namedIndividual('#Strong')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Delicate'),namedIndividual('#Moderate'),namedIndividual('#Strong')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Sweet">\n<title type="individual">SWEET</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineSugar'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#Sweet')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasSugar'),[namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling')],namedIndividual('#Sweet')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Dry'),namedIndividual('#OffDry'),namedIndividual('#Sweet')).
'</subgroup>'.
'<subgroup id="Distinctions">'.
differentIndividuals([namedIndividual('#OffDry'),namedIndividual('#Dry')],namedIndividual('#Sweet')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SweetRiesling">\n<title type="class">SWEET RIESLING</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#SweetRiesling'),objectIntersectionOf(class('#Riesling'),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Sweet')))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#SweetRiesling'),class('#DessertWine')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#SweetRiesling'),objectHasValue(objectProperty('#hasBody'),namedIndividual('#Full'))).
subClassOf(class('#SweetRiesling'),objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Strong')))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#SweetRiesling'),[namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#SweetWine">\n<title type="class">SWEET WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#SweetWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Sweet')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TableWine">\n<title type="class">TABLE WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#TableWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Taylor">\n<title type="individual">TAYLOR</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Taylor')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#TaylorPort'),namedIndividual('#Taylor')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TaylorPort">\n<title type="individual">TAYLOR PORT</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Port'),namedIndividual('#TaylorPort')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#TaylorPort'),namedIndividual('#Taylor')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TexasRegion">\n<title type="individual">TEXAS REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#TexasRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CentralTexasRegion'),namedIndividual('#TexasRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#TexasRegion'),namedIndividual('#USRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#TexasWine">\n<title type="class">TEXAS WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#TexasWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#TexasRegion')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Tours">\n<title type="class">TOURS</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Tours'),objectIntersectionOf(class('#Loire'),objectHasValue(objectProperty('#locatedIn'),namedIndividual('#ToursRegion')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Tours'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
subClassOf(class('#Tours'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#CheninBlancGrape'))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ToursRegion">\n<title type="individual">TOURS REGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#ToursRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#ToursRegion'),namedIndividual('#LoireRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#USRegion">\n<title type="individual">USREGION</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Region'),namedIndividual('#USRegion')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#locatedIn'),[namedIndividual('#TexasRegion'),namedIndividual('#CaliforniaRegion')],namedIndividual('#USRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Ventana">\n<title type="individual">VENTANA</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#Ventana')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#Ventana')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#VentanaCheninBlanc">\n<title type="individual">THE VENTANA CHENIN BLANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CheninBlanc'),namedIndividual('#VentanaCheninBlanc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#Ventana')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#OffDry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#CentralCoastRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Vintage">\n<title type="class">VINTAGE</title>\n<text>'.
'<subgroup id="Description">'.
subClassOf(class('#Vintage'),objectExactCardinality('1',objectProperty('#hasVintageYear'),class('http://www.w3.org/2002/07/owl#Thing'))).
objectPropertyDomain(objectProperty('#hasVintageYear'),class('#Vintage')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#VintageYear">\n<title type="class">VINTAGE YEAR</title>\n<text>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('#hasVintageYear'),class('#VintageYear')).
dataPropertyDomain(dataProperty('#yearValue'),class('#VintageYear')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#VintageYear'),namedIndividual('#Year1998')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#White">\n<title type="individual">WHITE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion([class('#WineColor'),class('http://www.w3.org/2002/07/owl#Thing')],namedIndividual('#White')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasColor'),namedIndividual('#SelaksIceWine'),namedIndividual('#White')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Red'),namedIndividual('#Rose'),namedIndividual('#White')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhiteBordeaux">\n<title type="class">WHITE BORDEAUX</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WhiteBordeaux'),objectIntersectionOf(class('#Bordeaux'),class('#WhiteWine'))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WhiteBordeaux'),objectAllValuesFrom(objectProperty('#madeFromGrape'),objectOneOf(namedIndividual('#SemillonGrape'),namedIndividual('#SauvignonBlancGrape')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhiteBurgundy">\n<title type="class">WHITE BURGUNDY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WhiteBurgundy'),objectIntersectionOf(class('#Burgundy'),class('#WhiteWine'))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WhiteBurgundy'),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
subClassOf(class('#WhiteBurgundy'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#ChardonnayGrape'))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#WhiteBurgundy'),[namedIndividual('#PulignyMontrachetWhiteBurgundy'),namedIndividual('#CortonMontrachetWhiteBurgundy')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhiteLoire">\n<title type="class">WHITE LOIRE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WhiteLoire'),objectIntersectionOf(class('#Loire'),class('#WhiteWine'))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#WhiteLoire'),objectAllValuesFrom(objectProperty('#madeFromGrape'),objectOneOf(namedIndividual('#PinotBlancGrape'),namedIndividual('#CheninBlancGrape'),namedIndividual('#SauvignonBlancGrape')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhiteNonSweetWine">\n<title type="class">WHITE NON SWEET WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WhiteNonSweetWine'),objectIntersectionOf(class('#WhiteWine'),objectAllValuesFrom(objectProperty('#hasSugar'),objectOneOf(namedIndividual('#OffDry'),namedIndividual('#Dry'))))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhiteTableWine">\n<title type="class">WHITE TABLE WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WhiteTableWine'),objectIntersectionOf(class('#TableWine'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White')))).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhiteWine">\n<title type="class">WHITE WINE</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WhiteWine'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#hasColor'),namedIndividual('#White')))).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#WhiteWine'),namedIndividual('#StGenevieveTexasWhite')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhitehallLane">\n<title type="individual">WHITEHALL LANE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#Winery'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'<subgroup id="Others">'.
differentIndividuals(namedIndividual('#Bancroft'),namedIndividual('#ChateauChevalBlanc'),namedIndividual('#ChateauDYchem'),namedIndividual('#ChateauDeMeursault'),namedIndividual('#ChateauLafiteRothschild'),namedIndividual('#ChateauMargauxWinery'),namedIndividual('#ChateauMorgon'),namedIndividual('#ClosDeLaPoussie'),namedIndividual('#ClosDeVougeot'),namedIndividual('#CongressSprings'),namedIndividual('#Corbans'),namedIndividual('#CortonMontrachet'),namedIndividual('#Cotturi'),namedIndividual('#DAnjou'),namedIndividual('#Elyse'),namedIndividual('#Forman'),namedIndividual('#Foxen'),namedIndividual('#GaryFarrell'),namedIndividual('#KalinCellars'),namedIndividual('#KathrynKennedy'),namedIndividual('#LaneTanner'),namedIndividual('#Longridge'),namedIndividual('#Marietta'),namedIndividual('#McGuinnesso'),namedIndividual('#MountEdenVineyard'),namedIndividual('#Mountadam'),namedIndividual('#PageMillWinery'),namedIndividual('#PeterMccoy'),namedIndividual('#PulignyMontrachet'),namedIndividual('#SantaCruzMountainVineyard'),namedIndividual('#SaucelitoCanyon'),namedIndividual('#SchlossRothermel'),namedIndividual('#SchlossVolrad'),namedIndividual('#SeanThackrey'),namedIndividual('#Selaks'),namedIndividual('#SevreEtMaine'),namedIndividual('#StGenevieve'),namedIndividual('#Stonleigh'),namedIndividual('#Taylor'),namedIndividual('#Ventana'),namedIndividual('#WhitehallLane')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhitehallLaneCabernetFranc">\n<title type="individual">THE WHITEHALL LANE CABERNET FRANC</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#CabernetFranc'),namedIndividual('#WhitehallLaneCabernetFranc')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#WhitehallLane')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WhitehallLanePrimavera">\n<title type="individual">THE WHITEHALL LANE PRIMAVERA</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#DessertWine'),namedIndividual('#WhitehallLanePrimavera')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasBody'),namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#Light')).
objectPropertyAssertion(objectProperty('#hasFlavor'),namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#Delicate')).
objectPropertyAssertion(objectProperty('#hasSugar'),namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#Sweet')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#NapaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Wine">\n<title type="class">WINE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#Wine'),class('http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#PotableLiquid')).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Wine'),[objectExactCardinality('1',objectProperty('#hasSugar'),class('http://www.w3.org/2002/07/owl#Thing')),objectExactCardinality('1',objectProperty('#hasMaker'),class('http://www.w3.org/2002/07/owl#Thing')),objectExactCardinality('1',objectProperty('#hasFlavor'),class('http://www.w3.org/2002/07/owl#Thing')),numberOfElements('5')]).
objectPropertyDomain([objectProperty('#madeFromGrape'),objectProperty('#hasWineDescriptor'),objectProperty('#hasColor')],class('#Wine')).
subClassOf(class('#Wine'),objectMinCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing'))).
subClassOf(class('#Wine'),objectSomeValuesFrom(objectProperty('#locatedIn'),class('#Region'))).
subClassOf(class('#Wine'),objectAllValuesFrom(objectProperty('#hasMaker'),class('#Winery'))).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#LateHarvest'),class('#EarlyHarvest'),class('#DessertWine')],class('#Wine')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WineBody">\n<title type="class">WINE BODY</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WineBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium'),namedIndividual('#Light'))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#WineBody'),class('#WineTaste')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('#hasBody'),class('#WineBody')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#WineBody'),[namedIndividual('#Medium'),namedIndividual('#Light'),namedIndividual('#Full')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WineColor">\n<title type="class">WINE COLOR</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WineColor'),objectOneOf(namedIndividual('#Rose'),namedIndividual('#White'),namedIndividual('#Red'))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#WineColor'),class('#WineDescriptor')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('#hasColor'),class('#WineColor')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#WineColor'),[namedIndividual('#White'),namedIndividual('#Rose'),namedIndividual('#Red')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WineDescriptor">\n<title type="class">WINE DESCRIPTOR</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WineDescriptor'),objectUnionOf(class('#WineColor'),class('#WineTaste'))).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('#hasWineDescriptor'),class('#WineDescriptor')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#WineTaste'),class('#WineColor')],class('#WineDescriptor')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WineFlavor">\n<title type="class">WINE FLAVOR</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WineFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Delicate'),namedIndividual('#Strong'))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#WineFlavor'),class('#WineTaste')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('#hasFlavor'),class('#WineFlavor')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#WineFlavor'),[namedIndividual('#Strong'),namedIndividual('#Moderate'),namedIndividual('#Delicate')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WineGrape">\n<title type="class">WINE GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#WineGrape'),class('http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#Grape')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('#madeFromGrape'),class('#WineGrape')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#WineGrape'),[namedIndividual('#ZinfandelGrape'),namedIndividual('#SemillonGrape'),namedIndividual('#SauvignonBlancGrape'),numberOfElements('16')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WineSugar">\n<title type="class">WINE SUGAR</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#WineSugar'),objectOneOf(namedIndividual('#OffDry'),namedIndividual('#Sweet'),namedIndividual('#Dry'))).
'</subgroup>'.
'<subgroup id="Typology">'.
subClassOf(class('#WineSugar'),class('#WineTaste')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyRange(objectProperty('#hasSugar'),class('#WineSugar')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#WineSugar'),[namedIndividual('#Sweet'),namedIndividual('#OffDry'),namedIndividual('#Dry')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#WineTaste">\n<title type="class">WINE TASTE</title>\n<text>'.
'<subgroup id="Typology">'.
subClassOf(class('#WineTaste'),class('#WineDescriptor')).
'</subgroup>'.
'<subgroup id="Examples">'.
subClassOf([class('#WineSugar'),class('#WineFlavor'),class('#WineBody')],class('#WineTaste')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Winery">\n<title type="class">WINERY</title>\n<text>'.
'<subgroup id="Examples">'.
classAssertion(class('#Winery'),[namedIndividual('#WhitehallLane'),namedIndividual('#Ventana'),namedIndividual('#Taylor'),numberOfElements('43')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Year1998">\n<title type="individual">YEAR1998</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#VintageYear'),namedIndividual('#Year1998')).
'</subgroup>'.
'<subgroup id="Description">'.
objectPropertyAssertion(objectProperty('#hasVintageYear'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#Year1998')).
dataPropertyAssertion(dataProperty('#yearValue'),namedIndividual('#Year1998'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#positiveInteger','1998')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#Zinfandel">\n<title type="class">ZINFANDEL</title>\n<text>'.
'<subgroup id="Definition">'.
equivalentClasses(class('#Zinfandel'),objectIntersectionOf(class('#Wine'),objectHasValue(objectProperty('#madeFromGrape'),namedIndividual('#ZinfandelGrape')),objectMaxCardinality('1',objectProperty('#madeFromGrape'),class('http://www.w3.org/2002/07/owl#Thing')))).
'</subgroup>'.
'<subgroup id="Description">'.
subClassOf(class('#Zinfandel'),[objectHasValue(objectProperty('#hasSugar'),namedIndividual('#Dry')),objectHasValue(objectProperty('#hasColor'),namedIndividual('#Red'))]).
subClassOf(class('#Zinfandel'),[objectAllValuesFrom(objectProperty('#hasFlavor'),objectOneOf(namedIndividual('#Moderate'),namedIndividual('#Strong'))),objectAllValuesFrom(objectProperty('#hasBody'),objectOneOf(namedIndividual('#Full'),namedIndividual('#Medium')))]).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('#Zinfandel'),[namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#SaucelitoCanyonZinfandel'),namedIndividual('#MariettaZinfandel'),numberOfElements('5')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#ZinfandelGrape">\n<title type="individual">ZINFANDEL GRAPE</title>\n<text>'.
'<subgroup id="Typology">'.
classAssertion(class('#WineGrape'),namedIndividual('#ZinfandelGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#adjacentRegion">\n<title type="object property">IS ADJACENT REGION</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#adjacentRegion'),class('#Region')).
objectPropertyDomain(objectProperty('#adjacentRegion'),class('#Region')).
'</subgroup>'.
'<subgroup id="Description">'.
symmetricObjectProperty([objectProperty('#adjacentRegion')]).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('#adjacentRegion'),namedIndividual('#MendocinoRegion'),namedIndividual('#SonomaRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasBody">\n<title type="object property">HAS AS BODY</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#hasBody'),class('#WineBody')).
'</subgroup>'.
'<subgroup id="Typology">'.
subObjectPropertyOf(objectProperty('#hasBody'),objectProperty('#hasWineDescriptor')).
'</subgroup>'.
'<subgroup id="Description">'.
functionalObjectProperty([objectProperty('#hasBody')]).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('#hasBody'),[namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),numberOfElements('13')],namedIndividual('#Full')).
objectPropertyAssertion(objectProperty('#hasBody'),[namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#StonleighSauvignonBlanc'),numberOfElements('25')],namedIndividual('#Medium')).
objectPropertyAssertion(objectProperty('#hasBody'),[namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#LongridgeMerlot'),namedIndividual('#LaneTannerPinotNoir')],namedIndividual('#Light')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasColor">\n<title type="object property">HAS AS COLOR</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#hasColor'),class('#WineColor')).
objectPropertyDomain(objectProperty('#hasColor'),class('#Wine')).
'</subgroup>'.
'<subgroup id="Typology">'.
subObjectPropertyOf(objectProperty('#hasColor'),objectProperty('#hasWineDescriptor')).
'</subgroup>'.
'<subgroup id="Description">'.
functionalObjectProperty([objectProperty('#hasColor')]).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('#hasColor'),namedIndividual('#SelaksIceWine'),namedIndividual('#White')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasFlavor">\n<title type="object property">HAS AS FLAVOR</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#hasFlavor'),class('#WineFlavor')).
'</subgroup>'.
'<subgroup id="Typology">'.
subObjectPropertyOf(objectProperty('#hasFlavor'),objectProperty('#hasWineDescriptor')).
'</subgroup>'.
'<subgroup id="Description">'.
functionalObjectProperty([objectProperty('#hasFlavor')]).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('#hasFlavor'),[namedIndividual('#SeanThackreySiriusPetiteSyrah'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),numberOfElements('12')],namedIndividual('#Strong')).
objectPropertyAssertion(objectProperty('#hasFlavor'),[namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#VentanaCheninBlanc'),namedIndividual('#StGenevieveTexasWhite'),numberOfElements('26')],namedIndividual('#Moderate')).
objectPropertyAssertion(objectProperty('#hasFlavor'),[namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#MountadamRiesling'),numberOfElements('5')],namedIndividual('#Delicate')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasMaker">\n<title type="object property">HAS AS MAKER</title>\n<text>'.
'<subgroup id="Description">'.
inverseObjectProperties(objectProperty('#producesWine'),objectProperty('#hasMaker')).
functionalObjectProperty([objectProperty('#hasMaker')]).
'</subgroup>'.
'<subgroup id="Examples (3 of 41 shown)">'.
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#BancroftChardonnay'),namedIndividual('#Bancroft')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauChevalBlancStEmilion'),namedIndividual('#ChateauChevalBlanc')).
objectPropertyAssertion(objectProperty('#hasMaker'),namedIndividual('#ChateauDYchemSauterne'),namedIndividual('#ChateauDYchem')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasSugar">\n<title type="object property">HAS AS SUGAR</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#hasSugar'),class('#WineSugar')).
'</subgroup>'.
'<subgroup id="Typology">'.
subObjectPropertyOf(objectProperty('#hasSugar'),objectProperty('#hasWineDescriptor')).
'</subgroup>'.
'<subgroup id="Description">'.
functionalObjectProperty([objectProperty('#hasSugar')]).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('#hasSugar'),[namedIndividual('#VentanaCheninBlanc'),namedIndividual('#CorbansDryWhiteRiesling')],namedIndividual('#OffDry')).
objectPropertyAssertion(objectProperty('#hasSugar'),[namedIndividual('#WhitehallLaneCabernetFranc'),namedIndividual('#StonleighSauvignonBlanc'),namedIndividual('#StGenevieveTexasWhite'),numberOfElements('35')],namedIndividual('#Dry')).
objectPropertyAssertion(objectProperty('#hasSugar'),[namedIndividual('#WhitehallLanePrimavera'),namedIndividual('#SchlossVolradTrochenbierenausleseRiesling'),namedIndividual('#SchlossRothermelTrochenbierenausleseRiesling')],namedIndividual('#Sweet')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasVintageYear">\n<title type="object property">HAS AS VINTAGE YEAR</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#hasVintageYear'),class('#VintageYear')).
objectPropertyDomain(objectProperty('#hasVintageYear'),class('#Vintage')).
'</subgroup>'.
'<subgroup id="Description">'.
functionalObjectProperty([objectProperty('#hasVintageYear')]).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('#hasVintageYear'),namedIndividual('#SaucelitoCanyonZinfandel1998'),namedIndividual('#Year1998')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#hasWineDescriptor">\n<title type="object property">HAS AS WINE DESCRIPTOR</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#hasWineDescriptor'),class('#WineDescriptor')).
objectPropertyDomain(objectProperty('#hasWineDescriptor'),class('#Wine')).
'</subgroup>'.
'<subgroup id="Description">'.
subObjectPropertyOf([objectProperty('#hasSugar'),objectProperty('#hasFlavor'),objectProperty('#hasColor'),numberOfElements('4')],objectProperty('#hasWineDescriptor')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#locatedIn">\n<title type="object property">IS LOCATED IN</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#locatedIn'),class('#Region')).
objectPropertyDomain(objectProperty('#locatedIn'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'<subgroup id="Description">'.
transitiveObjectProperty([objectProperty('#locatedIn')]).
'</subgroup>'.
'<subgroup id="Examples (3 of 21 shown)">'.
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#CentralTexasRegion'),namedIndividual('#TexasRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#ChiantiRegion'),namedIndividual('#ItalianRegion')).
objectPropertyAssertion(objectProperty('#locatedIn'),namedIndividual('#SantaCruzMountainVineyardCabernetSauvignon'),namedIndividual('#SantaCruzMountainsRegion')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#madeFromGrape">\n<title type="object property">IS MADE FROM GRAPE</title>\n<text>'.
'<subgroup id="Definition">'.
objectPropertyRange(objectProperty('#madeFromGrape'),class('#WineGrape')).
objectPropertyDomain(objectProperty('#madeFromGrape'),class('#Wine')).
'</subgroup>'.
'<subgroup id="Typology">'.
subObjectPropertyOf(objectProperty('#madeFromGrape'),objectProperty('http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#madeFromFruit')).
'</subgroup>'.
'<subgroup id="Description">'.
inverseObjectProperties(objectProperty('#madeIntoWine'),objectProperty('#madeFromGrape')).
'</subgroup>'.
'<subgroup id="Examples">'.
objectPropertyAssertion(objectProperty('#madeFromGrape'),namedIndividual('#ChateauDYchemSauterne'),[namedIndividual('#SemillonGrape'),namedIndividual('#SauvignonBlancGrape')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#madeIntoWine">\n<title type="object property">IS MADE INTO WINE</title>\n<text>'.
'<subgroup id="Description">'.
inverseObjectProperties(objectProperty('#madeIntoWine'),objectProperty('#madeFromGrape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#producesWine">\n<title type="object property">PRODUCES WINE</title>\n<text>'.
'<subgroup id="Description">'.
inverseObjectProperties(objectProperty('#producesWine'),objectProperty('#hasMaker')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="#yearValue">\n<title type="data property">IS YEAR VALUE</title>\n<text>'.
'<subgroup id="Definition">'.
dataPropertyRange(dataProperty('#yearValue'),datatype('http://www.w3.org/2001/XMLSchema#positiveInteger')).
dataPropertyDomain(dataProperty('#yearValue'),class('#VintageYear')).
'</subgroup>'.
'<subgroup id="Examples">'.
dataPropertyAssertion(dataProperty('#yearValue'),namedIndividual('#Year1998'),literal(datatypeIRI='http://www.w3.org/2001/XMLSchema#positiveInteger','1998')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.w3.org/2002/07/owl#Thing">\n<title type="class">THING</title>\n<text>'.
'<subgroup id="Description">'.
objectPropertyDomain(objectProperty('#locatedIn'),class('http://www.w3.org/2002/07/owl#Thing')).
'</subgroup>'.
'<subgroup id="Examples">'.
classAssertion(class('http://www.w3.org/2002/07/owl#Thing'),[namedIndividual('#White'),namedIndividual('#Sweet'),namedIndividual('#Strong'),numberOfElements('21')]).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#Grape">\n<title type="class">GRAPE</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf(class('#WineGrape'),class('http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#Grape')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#PotableLiquid">\n<title type="class">POTABLE LIQUID</title>\n<text>'.
'<subgroup id="Examples">'.
subClassOf(class('#Wine'),class('http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#PotableLiquid')).
'</subgroup>'.
'</text>\n</description>'.
'<description iri="http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#madeFromFruit">\n<title type="object property">IS MADE FROM FRUIT</title>\n<text>'.
'<subgroup id="Description">'.
subObjectPropertyOf(objectProperty('#madeFromGrape'),objectProperty('http://www.w3.org/TR/2003/PR-owl-guide-20031209/food#madeFromFruit')).
'</subgroup>'.
'</text>\n</description>'.
