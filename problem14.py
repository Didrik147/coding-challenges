# -*- coding: utf-8 -*-

import time

t_start = time.time()

def Collatz(n):
    nterms = 1
    while n != 1:
        if n%2 == 0:
            n = n//2
        else:
            n = 3*n + 1
        #print(n)
        nterms += 1
    
    return nterms


"""
nmax = 1
for n in range(1, 100000):
    nterms = Collatz(n)
    #print("Number of terms:", nterms)
    #if nterms > 10:
    #    print(f"The staring number {n} produces a chain of {nterms} terms")
    if nterms > nmax:
        print(f"The staring number {n} produces a chain of {nterms} terms")
        nmax = nterms
"""

nmax = 1
for n in range(1, 1000000):
    nterms = Collatz(n)
    
    if nterms > nmax:
        print(f"The staring number {n} produces a chain of {nterms} terms")
        nmax = nterms


t_end = time.time()
elapsed = t_end - t_start
print(f"The program ran for {elapsed:.2f} seconds")

"""
The staring number 837799 produces a chain of 525 terms
"""