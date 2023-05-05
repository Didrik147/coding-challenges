# -*- coding: utf-8 -*-
"""
Slik starter julesangen vi alle kjenner så godt - men på Nordpolen synger de den litt annerledes. Der er det tradisjon å synge de siste tre tingene nissemor gir så raskt som mulig, så de skrives på én linje i teksten. I år har noen rakkeralver kludret til teksten og skrevet sine egne navn inn også. Etterhvert som vi synger oppdager vi at disse er skrøner (de inneholder ordet "alv") og lar være å gjenta dem i påfølgende vers.
"""

dag = 0

ting = []

tot = 0

with open('gaver.txt', 'r', encoding="UTF-8") as f:
    for rad in f:
        dag += 1
        
        print(f"På den {dag}. alvedagen sendte nissemor til meg")
        tot += 1
        
        rad = rad.strip()
        
        ting.append(rad)
        for i in range(len(ting)-1, -1, -1):
            if 0 < i < 3:
                print(f"{i+1} {ting[i]}", end=" og ")
            else:
                print(f"{i+1} {ting[i]}")
                tot += 1
        
        if 'alv' in rad:
            ting.remove(rad)
        
        print()


print(tot)