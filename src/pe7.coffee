prime = require '../help/prime'

list = prime.primeList {max: 500000}
console.log list[10000]
