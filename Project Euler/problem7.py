# -*- coding: utf-8 -*-

# 10001st prime
"""
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
"""

from pylab import ceil, sqrt, array
import time

t1 = time.process_time()

def isPrime(n):
    p = True
    if n <= 1:
        p = False
    elif n == 2:
        p = True
    else:
        for i in range(2, int(ceil(sqrt(n)))+1):
            if n % i == 0:
                p = False
                break

    return p


m = 10001

#primes = zeros(m, 'int')
primes = []

i = 2

while len(primes) < m:
    if isPrime(i):
        primes.append(i)
    
    i += 1
        

print(f"Prime number nr. {m} is {primes[-1]}")

t2 = time.process_time()
dt = t2-t1

print(f"Time elapsed: {dt:e} s")