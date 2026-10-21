# Enter your code here. Read input from STDIN. Print output to STDOUT
import pandas as pd

n = int(input())
s = pd.to_numeric(pd.Series(input().split()[:n]))

print(s.mean())
print(s.median())
print(s.mode()[0])