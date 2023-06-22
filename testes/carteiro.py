n, m = [int(i) for i in input().split()]
c = [int(i) for i in input().split()]
e = [int(i) for i in input().split()]

def find(i, l):
    m = l.__len__() // 2
    if m == len(l):
        return -1
    if i < l[m]:
        return -1 if (r:=find(i, l[:m])) == -1 else r
    elif i > l[m]:
        return -1 if (r:=find(i, l[m+1:])) == -1 else m + r + 1
    elif i == l[m]:
        return m
    else:
        return -1

r = ca = 0
for ea in e:
    de = find(ea, c)
    r += abs(ca - de)
    ca = de
print(r)
