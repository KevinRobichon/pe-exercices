class BigNum
    constructor: (init) ->
        @digits = [0]
        @sign = 1
        if init.digits?
            @fromBigNum init
        else if not isNaN(init)
            @fromNumber init

    fromNumber: (num) ->
        @sign = if num < 0 then -1 else 1
        @digits = [0]
        @digits[0] = num
        @clean()

    fromString: (str) ->
        @digits = []
        arr = str.split('')
        if arr.length is 0
            arr.push '0'
        @sign = if arr[0] is '-' then -1 else 1
        arr.reverse()
        for c in arr
            @digits.push parseInt(c)

    fromBigNum: (big) ->
        @sign = big.sign
        @digits = big.digits.slice(0)

    clean: () ->
        over = 0
        for d, i in @digits
            d += over
            over = ~~(d / 10)
            d %= 10
            @digits[i] = d
        while over > 0
            @digits.push over % 10
            over = ~~(over / 10)

    sup: (big) ->
        null

    inf: (big) ->
        null

    equ: (big) ->
        null

    add: (big) ->
        for d, i in big.digits
            while not @digits[i]?
                @digits.push 0
            @digits[i] += d
        @clean()

    sub: (big) ->
        null

    mul: (big) ->
        arr = []
        for d, i in big.digits
            for td, j in @digits
                mul = d * td
                arr.push [mul, i + j]
        @digits = [0]
        for num in arr
            while not @digits[num[1]]?
                @digits.push 0
            @digits[num[1]] += num[0]
        @sign *= big.sign
        @clean()

    div: (big) ->
        null

    toString: () ->
        copy = @digits.slice(0)
        if @sign is -1
            copy.push '-'
        copy.reverse()
        return copy.join('')

module.exports = BigNum
