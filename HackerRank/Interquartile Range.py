#!/bin/python3

import math
import os
import random
import re
import sys

def merge_sort(values):
    if len(values) <= 1:
        return values
    
    mid = len(values)//2
    
    left = merge_sort(values[:mid])
    right = merge_sort(values[mid:])
    
    result = []
    
    i = j = 0
    
    while i < len(left) and j < len(right):
        if left[i] <= right[j]:
            result.append(left[i])
            i += 1
        else:
            result.append(right[j])
            j += 1
            
    result.extend(left[i:])
    result.extend(right[j:])
    
    return result
    
def median(values):
    mid = len(values)//2
    
    return values[mid] if len(values)%2 else (values[mid-1] + values[mid])/2
    
def split_middle(values):
    mid = len(values)//2
    
    lower = values[ : mid]
    upper = values[(mid + len(values) % 2) : ]
    
    return lower, upper


# The function accepts following parameters:
#  1. INTEGER_ARRAY values
#  2. INTEGER_ARRAY freqs
def interQuartile(values, freqs):
    # Print your answer to 1 decimal place within this function
    S = []

    i = 0

    for v in values:
        for f in range(freqs[i]):
            S.append(v)
        i += 1
        
    
    S = merge_sort(S)
    
    lower, upper = split_middle(S)
    
    Q1 = round(median(lower), 1)
    Q3 = round(median(upper), 1)

    print(f"{Q3 - Q1:.1f}")
    

if __name__ == '__main__':
    n = int(input().strip())

    val = list(map(int, input().rstrip().split()))

    freq = list(map(int, input().rstrip().split()))

    interQuartile(val, freq)
