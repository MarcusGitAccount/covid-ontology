const items = 
  [...document.querySelector('.wikitable').querySelectorAll('tr')].slice(1)
    .map(tr => [...tr.querySelectorAll('td')].slice(1, 3)
        .map(td => td.innerHTML.split('<br>')
        .map(item => item.replace(/<\/?[^>]+(>|$)/g, "").trim().split(' ')
              .map(x => parseInt(x)))))
    .map(line => ({ 'n': line[0][0][0], 'marks': line[1] }))


for (const {n, marks} of items) { 
  const expected = (n * (n + 1)) >> 1 

  console.log('n = ', n);
  for (const ruler of marks) {
    let total = 0;

    console.log('Evaluating ', ruler)

    const s = new Set();
    for (let i = 0; i < ruler.length - 1; i++) {
      for (let j = i + 1; j < ruler.length; j++) {
        const diff = ruler[j] - ruler[i];

        total += diff;
        s.add(diff);
      }
    }

    console.log('Expected = ', expected);
    console.log('Computed = ', total);
    console.log(s)

  }
}