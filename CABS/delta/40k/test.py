import itertools
import sys
import ast
import time
import operator



def intersection(lst1, lst2):
    set1 = []
    set2 = []
    for  i in lst1:
        set1.append(','.join([str(elem) for elem in i]))
    for i in lst2:
        set2.append(','.join([str(elem) for elem in i]))
    newSet = set(set1).intersection(set(set2))
    out = []
    for i in newSet:
        out.append(i.split(","))
    return out

def Diff(lst1, lst2):
    set1 = []
    set2 = []
    for  i in lst1:
        set1.append(','.join([str(elem) for elem in i]))
    for i in lst2:
        set2.append(','.join([str(elem) for elem in i]))
    newSet = set(set1).difference(set(set2))
    out = []
    for i in newSet:
        out.append(i.split(","))
    return out

# def intersection(lst1, lst2):
#     lst3 = [value for value in lst1 if value in lst2]
#     return lst3
#
# def Diff(li1, li2):
#     li_dif = [i for i in li1 + li2 if i not in li1 or i not in li2]
#     return li_dif

def Candidategeneration(pattern):
    candidate = []
    length = len(pattern)
    for i in range(0, length):
        element1 = pattern[i]
        for j in range(i+1, length):
            element2 = pattern[j]
            len_each_pattern = len(element1)
            if len_each_pattern == 1:
                next_list = element1 + element2
                candidate.append(next_list)
            else:
                if element1[0:len_each_pattern-1] == element2[0:len_each_pattern-1]:
                    next_list = element1[0:len_each_pattern-1]
                    if newdix[element1[len_each_pattern-1]] > newdix[element2[len_each_pattern-1]]:
                        next_list.append(element1[len_each_pattern-1])
                        next_list.append(element2[len_each_pattern-1])
                    else:
                        next_list.append(element2[len_each_pattern-1])
                        next_list.append(element1[len_each_pattern-1])
                    candidate.append(next_list)
    return candidate

def isinOrder(A, B):
    i = 0
    j = 0
    while(i<len(A)):
        flag=True
        while(j<len(B)):
            if(A[i]==B[j]):
                flag = False
                j+=1
                break
            j+=1
        if(flag):
            return False
        i+=1
    return True


def NOP_generation(pnop,cand,Delta,Dupdated,N1,max_or,prev):

    global numQ
    NEWNOP = []
    diq = {}
    P = intersection(pnop,cand)
    Q = Diff(cand,P)
    for i in Q:
        diq['.'.join(i)] = [0,0]



    f = open(Delta,'r')
    for line in f:
        line = line.strip('\n')
        items = line.split(',')
        for j in P:
            flag = 0
            for k in j[:-1]:
                if k in items:
                    flag = 1
                    break
            if j[-1] in items:
                de['.'.join(j)][1] -= 1
                if flag==1:
                    de['.'.join(j)][0] -= 1
        for j in Q:
            flagq = 0
            for k in j[:-1]:
                if k in items:
                    flagq = 1
                    break
            if j[-1] in items:
                diq['.'.join(j)][1] += 1
                if flagq == 1:
                    diq['.'.join(j)][0] += 1



    for j in P:
        if de['.'.join(j)][0]/de['.'.join(j)][1] <= float(max_or):
            NEWNOP.append(j)


    tempQ = []
    for j in Q:
        ldef = []
        if(isinOrder(j,N1)==False):
            tempQ.append(j)
        elif(diq['.'.join(j)][1]==0 or diq['.'.join(j)][0]/diq['.'.join(j)][1] > float(max_or)):
            tempQ.append(j)
        # sumq = 0
        # for i in j:
        #     if [str(i)] in delcand1:
        #         if [str(i)] in N1:
        #             sumq = sumq + 1
        # if sumq == len(j):
        #     tri = j.copy()
        #     tri.sort(key = lambda i: N1.index([i]))
        #     if j == tri:
        #         if diq['.'.join(j)][0]/diq['.'.join(j)][1] <= float(max_or):
        #             ldef.append(j)
        #             Q = Diff(Q,ldef)

    Q = tempQ

    for i in Q:
        diq['.'.join(i)] = [0,0]

    numQ = numQ + len(Q)

    if len(Q)!= 0:
        fq = open(Dupdated,'r')
        for line in fq:
            line = line.strip('\n')
            items = line.split(',')
            for j in Q:
                flaq = 0
                for k in j[:-1]:
                    if k in items:
                        flaq = 1
                        break
                if j[-1] in items:
                    diq['.'.join(j)][1] += 1
                    if flaq == 1:
                        diq['.'.join(j)][0] += 1

    for j in Q:
        if diq['.'.join(j)][0]/diq['.'.join(j)][1] <= float(max_or):
            NEWNOP.append(j)

    return NEWNOP



if __name__ == '__main__':
    DB = sys.argv[1]
    Delta = sys.argv[2]
    Dupdated = sys.argv[3]
    min_rf = sys.argv[4]
    min_rf = float(min_rf)
    max_or = sys.argv[5]
    max_or = float(max_or)

    global numQ
    numQ = 0

    readcand1 = open("cand1.txt","r")
    cd1 = readcand1.readline()
    cand1 = ast.literal_eval(cd1)

    f = open("nops_0.035_0.4.txt","r")
    PNOP = f.readlines()
    PNOP = [ast.literal_eval(a.strip()) for a in PNOP]


    readdict = open("or_0.035_0.4.txt","r")
    dic = readdict.readline()
    de = ast.literal_eval(dic)

    readcount = open("cand1count.txt","r")
    cnt = readcount.readline()
    sum = ast.literal_eval(cnt)
    # SIZE 1 NEWNOPS
    NEWNOP = []
    sizcnt1 = []
    updated = 362776
    removed_size = 40000

    P1 = intersection(PNOP[0],cand1)
    Q1 = Diff(cand1,P1)
    tie1 = time.clock()
    t1 = {}
    for i in cand1:
        t1['.'.join(i)] = 0

    f = open(Delta,'r')
    for line in f:
        line = line.strip('\n')
        items = line.split(',')
        ktem = []
        for i in items:
            f = []
            f.append(i)
            ktem.append(f)
        for j in P1:
            if j in ktem:
                t1['.'.join(j)] += 1;
        for j in Q1:
            if j in ktem:
                t1['.'.join(j)] += 1;

    for j in P1:
        if (sum['.'.join(j)] - t1['.'.join(j)]) >= float(updated*min_rf):
            NEWNOP.append(j)
            sizcnt1.append(sum['.'.join(j)] - t1['.'.join(j)])


    for j in Q1:
        if t1['.'.join(j)] >= float(removed_size*min_rf):
            Q1 = Diff(Q1,[j])

    for i in Q1:
        t1['.'.join(i)] = 0

    numQ = len(Q1)

    if len(Q1)!= 0:
        fq = open(Dupdated,'r')
        for line in fq:
            line = line.strip('\n')
            items = line.split(',')
            ktemu = []
            for i in items:
                fu = []
                fu.append(i)
                ktemu.append(fu)
            for j in Q1:
                if j in ktemu:
                    t1['.'.join(j)] += 1;


    for j in Q1:
        if t1['.'.join(j)] >= float(updated*min_rf):
            NEWNOP.append(j)
            sizcnt1.append(t1['.'.join(j)])

    newdix = {}
    for i in range(len(NEWNOP)):
        newdix[(NEWNOP[i][0])] = sizcnt1[i]

    # print("LENGHT:",len(NEWNOP))
    pdf = {}
    lts = []
    for i in range(len(NEWNOP)):
        kf = '.'.join(NEWNOP[i])
        pdf[kf] = sizcnt1[i]
    sorted_list = sorted(pdf.items() , key = operator.itemgetter(0))
    sorted_list.sort(key = lambda x:x[1],reverse = True)
    NEWNOP = []
    for p in sorted_list:
        tmp= []
        tmp.append(p[0])
        NEWNOP.append(tmp)
    N1 = NEWNOP
    # print("NEWNOP - 1 :",NEWNOP)
    # print()


    for k in range(1,len(PNOP)):
        cand = Candidategeneration(NEWNOP)
        if len(cand)==0 or k == len(PNOP)-1:
            tie2 = time.clock()
            print(numQ)
            print("process done",str(tie2-tie1))
            break
        NEWNOP = NOP_generation(PNOP[k],cand,Delta,Dupdated,PNOP[0],max_or,PNOP[k-1])
        # print("LENGHT:",len(NEWNOP))
        # print("NEWNOP -",k+1,":",NEWNOP)
        # if k == len(PNOP):
        #     tie2 = time.clock()
        #     print(numQ)
        #     print("process done",str(tie2-tie1))
        # exit(1)
        # print()
