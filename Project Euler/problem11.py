# -*- coding: utf-8 -*-
"""
https://projecteuler.net/problem=11
"""

import time
t_start = time.time()

from numpy import loadtxt




grid = loadtxt('problem11_grid.txt', dtype=int)

#print(grid)

rows = len(grid)
cols = len(grid[0])
#print(rows, cols)

Pmax = 0

# Right
for i in range(rows):
    for j in range(cols-4):
        P = 1
        P *= grid[i,j]
        P *= grid[i,j+1]
        P *= grid[i,j+2]
        P *= grid[i,j+3]
        
        if P > Pmax:
            Pmax = P


# Diagonally right-down
for i in range(rows-4):
    for j in range(cols-4):
        P = 1
        P *= grid[i,j]
        P *= grid[i+1,j+1]
        P *= grid[i+2,j+2]
        P *= grid[i+3,j+3]
        
        if P > Pmax:
            Pmax = P

# Diagonally left-down
for i in range(rows-4):
    for j in range(cols-4):
        P = 1
        P *= grid[i,-j]
        P *= grid[i+1,-(j+1)]
        P *= grid[i+2,-(j+2)]
        P *= grid[i+3,-(j+3)]
        
        if P > Pmax:
            Pmax = P



print("Største produkt er", Pmax)

t_end = time.time()
diff = t_end - t_start

print(f"Tid brukt: {diff*1000} ms")
