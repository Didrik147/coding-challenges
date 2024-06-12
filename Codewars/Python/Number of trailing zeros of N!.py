"""
Write a program that will calculate the number of trailing zeros
in a factorial of a given number.

N! = 1 * 2 * 3 *  ... * N

Be careful 1000! has 2568 digits...
"""

# Work in progress

import math

def zeros(n):
    output = 0
    
    while n >= 5:
        n = n//5
        output += n
    
    return output


for n in range(0, 31):
    print(f"{n}! = {math.factorial(n)}, zeros: {zeros(n)}")
