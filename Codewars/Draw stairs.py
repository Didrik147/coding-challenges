def draw_stairs(n):
    output = ""
    for i in range(n):
        output += f"{i*' '}I\n"
    
    output = output[:-1]
    
    return output
            

print(draw_stairs(3))