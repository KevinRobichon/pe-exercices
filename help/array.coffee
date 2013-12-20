module.exports.unique = (arr) ->
    arr.sort (a, b) -> a - b
    cur = null
    narr = []
    for e in arr
        if cur isnt e
            narr.push e
            cur = e
    return narr
