lib = require '../help/string'

max = 0
for a in [999..100] by -1
    for b in [999..100] by -1
        c = a * b
        if c > max and lib.isPalindrome(c)
            max = c
            break
console.log max
