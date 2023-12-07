# -*- coding: utf-8 -*-

#Largest palindrome product

"""
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""


ndigits = 3

if ndigits == 1:
    start = 1
    finish = 9
elif ndigits == 2:
    start = 10
    finish = 99
elif ndigits == 3:
    start = 100
    finish = 999
elif ndigits == 4:
    start = 1000
    finish = 9999


largest = 0
p1 = 0
p2 = 0

for i in range(start, finish+1):
    for j in range(start, finish+1):
        prod = i*j
        sprod = str(prod)
        if sprod == sprod[::-1]:
            #print(prod, "is a palindrome")
            if prod > largest:
                largest = prod
                p1 = i
                p2 = j


print("The largest palindrome made from the product is")
print(f"{p1} x {p2} = {largest}")