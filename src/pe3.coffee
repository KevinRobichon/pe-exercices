prime = require '../help/prime'

num = 600851475143
fs = prime.primeFactors(num)
console.log fs[fs.length - 1]
