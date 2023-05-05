# -*- coding: utf-8 -*-

from pylab import *

n = 2+1

grid = zeros((n,n), 'int')

for i in range(n): #rows
    for j in range(n): #cols
            pass
    
grid[0,0] = 1
grid[-1,-1] = 1

print(grid)