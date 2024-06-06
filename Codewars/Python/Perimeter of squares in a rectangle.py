def perimeter(n):
    li = [1, 1]
    
    while len(li) <= n:
        li.append(li[-1] + li[-2])
        
    return sum(li)*4


print(perimeter(7))