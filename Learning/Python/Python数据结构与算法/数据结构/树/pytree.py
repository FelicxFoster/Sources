# -*- coding: utf-8 -*-
#Filename: pytree.py

#因为每个结点的儿子数不一定相同
#所以用列表的方式更好些

G = ['G', []]
H = ['H', []]
I = ['I', []]
K = ['K', []]

D = ['D', []]
E = ['E', [G, H, I, K]]
F = ['F', []]

A = ['A', [D, E]]
B = ['B', []]
C = ['C', [F]]

Root = ['Root', [A, B, C]]

print(Root)
