BigNum = require '../help/bignum'

p2str = (p) ->
    num = new BigNum(2)
    for i in [1...p]
        num.mul(new BigNum(2))
    return num.toString()

str = p2str(1000)
arr = str.split('')
sum = 0
for c in arr
    sum += parseInt(c)
console.log sum
