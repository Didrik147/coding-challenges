# -*- coding: utf-8 -*-

# Sum square difference
"""
The sum of the squares of the first ten natural numbers is 385
The square of the sum of the first ten natural numbers is 55**2 = 3025

Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
"""

import time

t1 = time.process_time()


m = 100
sum_of_squares = 0
square_of_sum = 0

for i in range(1,m+1):
    sum_of_squares += i**2
    square_of_sum += i

square_of_sum = square_of_sum**2

diff = square_of_sum - sum_of_squares

print(diff)


t2 = time.process_time()
dt = t2-t1

print(f"Time elapsed: {dt:e} s")