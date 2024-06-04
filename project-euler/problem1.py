# Multiples of 3 or 5
S = 0

for i in range(1, 1000):
    if i % 3 == 0 or i % 5 == 0:
        S += i

print(S)