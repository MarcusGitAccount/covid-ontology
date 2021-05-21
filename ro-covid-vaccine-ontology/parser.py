import json
import os 

dirname = os.path.dirname(os.path.realpath(__file__))

lut = {
  'VS': 'Vaslui_County',
  'CJ': 'Cluj_County',
  'OT': 'Olt_County',
  'MM': 'Maramures_County',
  'HR': 'Harghita_County',
  'HD': 'Hunedoara_County',
  'IL': 'Ialomita_County',
  'IS': 'Iasi_County',
  'IF': 'Ilfov_County',
  'SM': 'Satu_Mare_County',
  'TL': 'Tulcea_County',
  'CT': 'Constanta_County',
  'CV': 'Covasna_County',
  'CL': 'Calarasi_County',
  'SJ': 'Salaj_County',
  'VN': 'Vrancea_County',
  'VL': 'Valcea_County',
  'NT': 'Neamt_County',
  'PH': 'Prahova_County',
  'SV': 'Suceava_County',
  'MS': 'Mures_County',
  'MH': 'Mehedinti_County',
  'TR': 'Teleorman_County'
}

pop = {
  'Vaslui_County':	395500,
  'Cluj_County':	691106,
  'Olt_County':	415530,
  'Maramures_County':	516562,
  'Harghita_County':	304969,
  'Hunedoara_County':	396253,
  'Ialomita_County':	293352,
  'Iasi_County':	772348,
  'Ilfov_County':	999562,
  'Satu_Mare_County':	329079,
  'Tulcea_County':	201462,
  'Constanta_County':	684082,
  'Covasna_County':	210177,
  'Calarasi_County':	285050,
  'Salaj_County':	343347,
  'Vrancea_County':	340310,
  'Valcea_County':	355320,
  'Neamt_County':	470766,
  'Prahova_County':	762886,
  'Suceava_County':	634810,
  'Mures_County':	550846,
  'Mehedinti_County':	303878,
  'Teleorman_County':	360178
}

if __name__ == '__main__':
  path = os.path.join(dirname, 'date_19_mai_la_13_00.json')

  with open(path, 'r') as fd:
    data = json.loads(fd.read())
    counties_cases = data['currentDayStats']['countyInfectionsNumbers']
    counties_incidence = data['currentDayStats']['incidence']
    counties_vaccinated = data['currentDayStats']['countyVaccinatedPercent']
    counties_cases_yesterday = data['historicalData']['2021-05-18']['countyInfectionsNumbers']

    rules_cases, rules_incidence, rules_vaccinated, owl_kb = [], [], [], []
    i = 1
    
    # dl-learner
    pos, negs = [], []

    for county in counties_cases.keys():
      if county in lut:
        today_cases = counties_cases[county] - counties_cases_yesterday[county]
        cases = f'(attribute-filler {lut[county]}	{today_cases} has-cases)\n'
        incidence = f'(attribute-filler {lut[county]}	{counties_incidence[county]} has-incidence)\n'
        vaccinated = f'(attribute-filler {lut[county]}	{counties_vaccinated[county]} has-vaccinated)\n'

        rules_cases.append(cases)
        rules_incidence.append(incidence)
        rules_vaccinated.append(vaccinated)

        # dl-learner
        owl = f""" 
          <County rdf:ID="#{county}">
            <has-pop rdf:datatype="&xsd;double">{float(pop[lut[county]])}</has-pop>
            <has-vaccinated rdf:datatype="&xsd;double">{counties_vaccinated[county]}</has-vaccinated>
          </County>
        """

        if today_cases > 25:
          pos.append(f'kb:{county}')
        else:
          negs.append(f'kb:{county}')

        owl_kb.append(owl)
        i += 1

    # print(len(rules), len(lut.keys()))
    assert len(rules_cases) == len(lut.keys())

    # print(rules)
    with open(os.path.join(dirname, 'counties.racer'), 'w') as fd_counties:
      fd_counties.writelines(rules_cases)
      fd_counties.write('\n')
      fd_counties.writelines(rules_incidence)
      fd_counties.write('\n')
      fd_counties.writelines(rules_vaccinated)

      # dl-learner
      fd_counties.write('\n')
      fd_counties.writelines(owl_kb)

      fd_counties.write('\n')
      fd_counties.writelines(', '.join(pos))
      fd_counties.write('\n')
      fd_counties.writelines(', '.join(negs))

