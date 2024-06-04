# -*- coding: utf-8 -*-

# Smallest multiple

"""
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

import time

t1 = time.process_time()

largest_divider = 20 #largest divider
num = largest_divider #starting number


while True:
    OK = True
    
    for i in range(2, largest_divider+1, 1):
        if num % i != 0:
            OK = False
            break
        
        
    if OK:
        print("Smallest number is", num)
        break
    else:
        num += largest_divider
        

t2 = time.process_time()
dt = t2-t1

print(f"Time elapsed: {dt:e} s")