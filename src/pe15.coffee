BigNum = require '../help/bignum.coffee'

latticePaths = (num) ->
    a = new BigNum(num * 2)
    for f in [2...(num * 2)]
        a.mul(new BigNum(f))
    b = new BigNum(num)
    for f in [2...(num)]
        b.mul(new BigNum(f))
    b.mul(new BigNum(b))
    console.log parseInt(a.toString()) / parseInt(b.toString())

latticePaths(20)
