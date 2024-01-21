# -*- coding: utf-8 -*-

n = int(input()) #takes numbers of bats as an int

bats = input() #takes the at-bats as a string
bats = bats.split() #converts at-bats to a list

#initiates variables
total = 0
k = 0

#goes through the list
for i in range(0, n):
  bat = int(bats[i]) #converts list element to integer
  if bat != -1: #-1 is walk
    total += bat #adds to the total
    k += 1 #increment the counter variable (used for averaging)
  
total = total/k #calculates the average

print(total) #print the average to the screen