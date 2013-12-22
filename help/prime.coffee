module.exports.primeList = (opt) ->
    list = opt.list ? [2, 3, 5, 7]
    actual = list[list.length - 1] + 2
    while true
        if actual > opt.max
            break
        is_prime = true
        for f in list
            if actual % f is 0
                is_prime = false
                break
        if is_prime
            list.push actual
        actual += 2
    return list

module.exports.primeFactors = (num, list, more) ->
    st = 0
    ind = 0
    fs = []
    sq = num / 2
    while num > 1
        st += 1000
        list = module.exports.primeList({list: list, max: st})
        for p in list[ind..]
            if p > sq
                #fs.push num
                num = 1
                break
            if more? and more
                num *= p
            while num % p is 0
                fs.push p
                num /= p
            ind++
    return fs

module.exports.primeFactorsExp = (num, list, more) ->
    fs = module.exports.primeFactors(num, list, more)
    arr = []
    for f in fs
        if arr.length is 0 or arr[arr.length - 1][0] isnt f
            arr.push [f, 1]
        else
            arr[arr.length - 1][1]++
    return arr

module.exports.factorsCount = (num, list) ->
    fe = module.exports.primeFactorsExp(num, list, true)
    count = 1
    for f in fe
        count *= f[1]
    return count
