# Enter your code here. Read input from STDIN. Print output to STDOUT
import pandas as pd

n = int(input())
s = pd.to_numeric(pd.Series(input().split()[:n]))

print(s.mean())
print(s.median())
print(s.mode()[0])

print(f"{s.std(ddof=0):.1f}")
margin = 1.96 * s.std(ddof=0)/(len(s)**0.5)

ci = (s.mean()-margin, s.mean()+margin)
print(f"{ci[0]:.1f} {ci[1]:.1f}")
