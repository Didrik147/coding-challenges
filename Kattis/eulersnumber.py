# -*- coding: utf-8 -*-

"""
https://open.kattis.com/problems/eulersnumber
"""

import math
import time

t1 = time.time()

def fakultet(k):
    prod = 1
    
    while k > 1:
        prod *= k
        k -= 1
        
    return prod



S = 0
i = 0
#n = 4000
n = int(input(''))

while i <= n:
    S += 1/fakultet(i)
    #S += 1/math.factorial(i)
    i += 1
    
    if abs(S - math.e) < 1E-12:
        break
    
print(S)

"""
print()
t2 = time.time()
diff = t2-t1
print(f"Tid brukt: {diff} s")
"""