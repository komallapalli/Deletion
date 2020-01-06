import itertools
import sys
import ast
from bitarray import bitarray
import time

g_list = {}

def Convert(string):
    li = list(string.split(" "))
    return li

def frequencies(filename):
    global g_list
    global d
    t_list = {}
    with open(filename, 'r') as f:
        lines = f.readlines()
        for itr, line in enumerate(lines):
            trans_list = line.strip().split(' ')
            for item in trans_list:
                if item in t_list:
                    t_list[item][itr] = 1
                else:
                    t_list[item] = bitarray(200000)
                    t_list[item].setall(0)
                    t_list[item][itr] = 1

    f.close()
    if '' in t_list:
        t_list.pop('')
    g_list = t_list
    c1 = {}
    for keys in t_list:
        c1[keys] = t_list[keys].count()
    d = c1
    list = [(k, v) for k, v in c1.items()]
    return list

# print(g_list)



if __name__ == '__main__':
    DB = sys.argv[1]
    cand1 = []
    deltacand1 = []
    items = frequencies(DB)
    for i in range(len(items)):
        cand1.append(Convert(items[i][0]))
    print(cand1)
