# -*- coding: utf-8 -*-

"""
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""

import time

t1 = time.process_time()


def special_pythagorean_triplet():
    for a in range(1,998):
        for b in range(a, 998):
            for c in range(b, 998):
                if a**2 + b**2 == c**2:
                    if a + b + c == 1000:
                        print(a, b, c)
                        prod = a*b*c
                        
                        return prod


prod = special_pythagorean_triplet()
print(prod)


t2 = time.process_time()
dt = t2-t1

print(f"Time elapsed: {dt:e} s")

