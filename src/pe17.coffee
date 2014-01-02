numbers = [
    'zero'
    'one'
    'two'
    'three'
    'four'
    'five'
    'six'
    'seven'
    'eight'
    'nine'
    'ten'
    'eleven'
    'twelve'
    'thirteen'
    'fourteen'
    'fifteen'
    'sixteen'
    'seventeen'
    'eighteen'
    'nineteen'
]
ds = [
    ''
    'ten'
    'twenty'
    'thirty'
    'forty'
    'fifty'
    'sixty'
    'seventy'
    'eighty'
    'ninety'
]
for n in [2..9]
    numbers.push ds[n]
    for n2 in [1..9]
        numbers.push "#{ds[n]}-#{numbers[n2]}"
for n in [1..9]
    numbers.push "#{numbers[n]} hundred"
    for n2 in [1..99]
        numbers.push "#{numbers[n]} hundred and #{numbers[n2]}"
numbers.push "one thousand"

numeral_c = (num) ->
    n = numbers[num]
    t = n.split ''
    co = 0
    for c in t
        if c isnt '-' and c isnt ' '
            co++
    return co

count = 0
for i in [1..1000]
    count += numeral_c(i)
console.log count
