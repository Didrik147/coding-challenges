# Work in progress (not done)

def snail(snail_map):
    output = []
    n = len(snail_map)
    i = 0
    j = 0
    while i < n:
        while j < n:
            output.append(snail_map[i][j])
            j += 1
            
        j = n-1
        i += 1
        
    return output


print(snail([
    [1,2,3],
    [4,5,6],
    [7,8,9]
]))