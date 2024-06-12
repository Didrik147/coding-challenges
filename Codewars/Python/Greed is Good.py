"""
Three 1's => 1000 points
Three 6's =>  600 points
Three 5's =>  500 points
Three 4's =>  400 points
Three 3's =>  300 points
Three 2's =>  200 points
One   1   =>  100 points
One   5   =>   50 point
"""

three_dict = {
    1 : 1000,
    2 : 200,
    3 : 300,
    4 : 400,
    5 : 500,
    6 : 600
}

one_dict = {
    1 : 100,
    2 : 0,
    3 : 0,
    4 : 0,
    5 : 50,
    6 : 0  
}

def score(dice):
    score = 0
    
    for n in range(1, 6+1):
        count = dice.count(n)
    
        score += one_dict[n]*count
        if count >= 3:
            score -= one_dict[n]*3
            score += three_dict[n]
        
    return score


# Skal bli 1100
print(score([1, 1, 1, 3, 1]))

# Skal bli 250
print(score( [5, 1, 3, 4, 1] ))