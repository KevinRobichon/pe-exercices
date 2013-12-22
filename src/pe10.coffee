prime = require '../help/prime'

list = prime.primeList({max: 2000000})
sum = 0
for num in list
    sum += num
console.log sum
