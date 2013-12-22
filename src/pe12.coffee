prime = require '../help/prime.coffee'

primes = prime.primeList({max: 1000})

a = 1
n = 1
while true
    ++a
    n += a
    fcount = prime.factorsCount(n, primes)
    if fcount > 500
        console.log n
        break
