# -*- coding: utf-8 -*-
"""
The principle is pretty simple:
- Given a integer (n)
- Find the next palindromic number after (excluding) n
Implement this in the function nextPalin

However, due to some constraints, the implementation is not:
0 < n < 10^1000
0 < t < 0.175s

A.K.A
- n is between 1 and 1001 digits
- total time for all test cases should be less than 0.175s (175ms)
"""

import time

def is_palin(n):
    s = str(n)
    if s == s[::-1]:
        return True
    else:
        return False


def next_palin(n):
    pass



"""
t1 = time.time()

for i in range(int(1E5)):
    is_palin(9876543219123456789)

t2 = time.time()

dt = t2-t1

print(dt)
"""