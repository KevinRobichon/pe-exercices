for c in [3..1000]
    for b in [2..c]
        for a in [1..b]
            if a * a + b * b is c * c
                if a + b + c is 1000
                    console.log a * b * c
                    break
