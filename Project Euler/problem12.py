# -*- coding: utf-8 -*-

"""
The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28
We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?
"""

import time
import math

t_start = time.time()

def findDivisors(t):
    divisors = [1, t]
    for d in range(2, int(math.sqrt(t))+1):
        if t%d == 0:
            divisors.append(d)
            
            if t//d not in divisors:
                divisors.append(t//d)

    ndivisors = len(divisors)
    return ndivisors


t = 0
nmax = 100000
for i in range(1,nmax+1):
    t += i
    nd = findDivisors(t)
    if nd > 500:
        break

print(f"{t} has {nd} divisors")

t_end = time.time()

elapsed = t_end - t_start

print(f"Program ran for {elapsed:.2f} seconds")   

