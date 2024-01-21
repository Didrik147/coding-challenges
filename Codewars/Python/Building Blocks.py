# -*- coding: utf-8 -*-
"""
Created on Fri Nov 24 08:48:35 2023

@author: didrikr
"""

class Block:
    def __init__(self, dimensions):
        self.width = dimensions[0]
        self.length = dimensions[1]
        self.height = dimensions[2]
        
    def get_width(self):
        return self.width
        
    def get_length(self):
        return self.length
        
    def get_height(self):
        return self.height
    
    def get_volume(self):
        return self.width*self.length*self.height
    
    def get_surface_area(self):
        return 2*self.length*self.width + 2*self.length*self.height + 2*self.width*self.height


b = Block([2,4,6])

print(b.get_width())
print(b.get_length())
print(b.get_height())
print(b.get_volume())
print(b.get_surface_area())