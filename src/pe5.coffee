prime = require '../help/prime'
array = require '../help/array'

fs = []
for a in [2..20]
    pf = prime.primeFactorsExp(a)
    fs = fs.concat pf
fs.sort (a, b) -> a[0] - b[0]
ffs = []
for f in fs
    if ffs.length is 0 or ffs[ffs.length - 1][0] isnt f[0]
        ffs.push f
    else if f[1] > ffs[ffs.length - 1][1]
        ffs[ffs.length - 1][1] = f[1]
mul = 1
for f in ffs
    for e in [1..f[1]]
        mul *= f[0]
console.log mul
