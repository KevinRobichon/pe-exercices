module.exports.isPalindrome = (num) ->
    str = num + ''
    len = str.length
    to = Math.floor(len / 2) - 1
    is_palindrome = true
    for i in [0..to]
        if str[i] isnt str[(len - i) - 1]
            is_palindrome = false
            break
    return is_palindrome
