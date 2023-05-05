# -*- coding: utf-8 -*-

"""
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
"""

from math import ceil, sqrt
from numpy import zeros
import time

t1 = time.process_time()

"""
If a number n is not a prime, it can be factored into two factors a and b:
    n = a * b
Now a and b can't be both greater than the square root of n, since then the product a * b would be greater than sqrt(n) * sqrt(n) = n. So in any factorization of n, at least one of the factors must be smaller than the square root of n, and if we can't find any factors less than or equal to the square root, n must be a prime.
"""

def isPrime(n):
    p = True
    if n <= 1:
        p = False
    elif n == 2:
        p = True
    else:
        for i in range(2, int(ceil(sqrt(n)))+1):
        #for i in range(2, n//2+1):
            if n % i == 0:
                p = False
                break

    return p



#prime = []
M = int(2E6)
#M = int(1E5)
S = 0
i = 0

for n in range(2, M):
    if isPrime(n):
        #print(n)
        S += n

print(S)



print()

t2 = time.process_time()
dt = t2-t1

print(f"Time elapsed: {dt:e} s")
