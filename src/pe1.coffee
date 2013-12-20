sum = 0
for n in [1...1000]
    if n % 3 is 0 or n % 5 is 0
        sum += n
console.log sum
