# -*- coding: utf-8 -*-

#Largest prime factor

"""
The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?
"""

from pylab import ceil, sqrt

#m = 13195
m = 600851475143

pf = []

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



for i in range(2, int(ceil(sqrt(m)))):
    if m % i == 0 and isPrime(i):
        pf.append(i)


print("The prime factors of", m, "is")
print(pf)
print("The largest one is")
print(max(pf))