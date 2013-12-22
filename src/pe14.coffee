max_l = 0
max_n = 0
for num in [1...1000000]
    arr = [num]
    while num isnt 1
        if num % 2 is 0
            num /= 2
        else
            num = 3 * num + 1
        arr.push num
    if arr.length > max_l
        max_n = arr[0]
        max_l = arr.length
console.log max_n
