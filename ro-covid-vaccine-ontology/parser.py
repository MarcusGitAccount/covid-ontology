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
  'SB': 'Sibiu_County',
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

if __name__ == '__main__':
  path = os.path.join(dirname, 'date_19_mai_la_13_00.json')

  with open(path, 'r') as fd:
    data = json.loads(fd.read())
    counties_cases = data['currentDayStats']['countyInfectionsNumbers']
    counties_incidence = data['currentDayStats']['incidence']
    rules_cases = []
    rules_incidence = []
    

    for county in counties_cases.keys():
      if county in lut:
        cases = f'(attribute-filler {lut[county]}	{counties_cases[county]} has-cases)\n'
        incidence = f'(attribute-filler {lut[county]}	{int(100 * counties_incidence[county])} has-incidence)\n'

        rules_cases.append(cases)
        rules_incidence.append(incidence)

    # print(len(rules), len(lut.keys()))
    assert len(rules_cases) == len(lut.keys())

    # print(rules)
    with open(os.path.join(dirname, 'counties.racer'), 'w') as fd_counties:
      fd_counties.writelines(rules_cases)
      fd.writelines('')
      fd_counties.writelines(rules_incidence)
