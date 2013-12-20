l = [1..100]
sum1 = 0
sum2 = 0
for i in l
    sum1 += i * i
    sum2 += i
console.log sum2 * sum2 - sum1
