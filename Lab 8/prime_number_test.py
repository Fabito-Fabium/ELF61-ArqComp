#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Jun 17 20:02:14 2024

@author: lilpc
"""
import time

def myAlg(arg):
    n = 0
    for i in range(2, arg+1, 1):
        k = 0
        j = 1
        while (j)**2 <= i:
            if i % j == 0:
                k+=1   
            j += 1
        if k == 1:
            print(i)
            n += 1
    return n
print(myAlg(65024))