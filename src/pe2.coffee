t = [1, 2]
sum = 2
while true
    next = t[0] + t[1]
    if next > 4000000
        break
    t = [t[1], next]
    if next % 2 is 0
        sum += next
console.log sum
