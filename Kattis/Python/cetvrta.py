# -*- coding: utf-8 -*-

p1 = input()
x1, y1 = p1.split(" ")
x1 = int(x1)
y1 = int(y1)

p2 = input()
x2, y2 = p2.split(" ")
x2 = int(x2)
y2 = int(y2)

p3 = input()
x3, y3 = p3.split(" ")
x3 = int(x3)
y3 = int(y3)

if x1 == x2:
    x4 = x3
elif x1 == x3:
    x4 = x2
elif x2 == x3:
    x4 = x1


if y1 == y2:
    y4 = y3
elif y1 == y3:
    y4 = y2
elif y2 == y3:
    y4 = y1
    

print(x4, y4)