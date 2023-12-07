# -*- coding: utf-8 -*-

"""
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
"""

"""
a + b + c = 1000            Take the square of both sides
a^2 + b^2 + c^2 + 2(ab + bc + ac) = 10^6 

Write c^2 as a^2 + b^2
a^2 + b^2 + ab + bc + ac = 5E5    add ab to both sides
(a + b)^2 + c(a + b) = 5E5 + ab
(a + b + c)(a + b) = 5E5 + ab We know that a + b + c = 1000
1000a + 1000b - ab = 5E5
a(1000 - b) + 1000b = 5E5
"""
import time

t1 = time.process_time()


def special_pythagorean_triplet():
    for a in range(1, 998):
        for b in range(a, 998):
            if a*(1000 - b) + 1000*b == 5E5:
                c = int((a**2 + b**2)**0.5)
                print(a, b, c)
                prod = a*b*c
                
                return prod


prod = special_pythagorean_triplet()
print(prod)


t2 = time.process_time()
dt = t2-t1

print(f"Time elapsed: {dt:e} s")

