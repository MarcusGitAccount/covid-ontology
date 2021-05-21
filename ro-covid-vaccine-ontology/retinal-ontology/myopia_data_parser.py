# Parse for the myopia dataset. Create the owl file

import os 

dirname = os.path.dirname(os.path.realpath(__file__))

columns = ['id', 'studyyear',  'myopic',  'age',  'gender',  'spheq',  'al',  'acd',  'lt',  'vcd',  'sporthr',  'readhr',  'comphr',  'studyhr',  'tvhr',  'diopterhr',  'mommy',  'dadmy']
exclude = set(['id', 'myopic'])

def getRecord(line, index):
  data = [f'<Record rdf:about="#{index}">']
  line = [float(x) for x in line.split(',')]

  for i, col in enumerate(columns):
    if col in exclude:
      continue

    prop = f'  <{col} rdf:datatype="&xsd;double">{line[i]}</{col}>'
    data.append(prop)
    
  data.append('</Record>\n\n')
  # record and positive or not
  return '\n'.join(data), line[2] == 1

if __name__ == '__main__':

  path = os.path.join(dirname, 'myopia.csv')

  with open(path, 'r') as fd:
    lines = [line.strip() for line in fd.readlines()[1:]]

  with open(os.path.join(dirname, 'record.owl'), 'w') as fd:
    pos, neg = [], []

    for index, line in enumerate(lines):
      data, is_pos = getRecord(line, index + 1)

      case = f'"kb:{index+1}"'
      if is_pos:
        pos.append(case)
      else:
        neg.append(case)
      
      fd.writelines(data)

    print('Positives\n', 'lp.positiveExamples = { ' + ', '.join(pos) + '}')
    print('Negatives\n', 'lp.negativeExamples = { ' + ', '.join(neg) + '}')
  #print(getRecord('5,1995,0,5,0,0.697,23.29,3.676,3.454,16.16,14,0,0,0,4,4,1,0', 100))