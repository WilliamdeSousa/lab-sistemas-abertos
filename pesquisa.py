lista = [1, 3, 4, 5, 6, 7]

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

for j in range(5):
    n = int(input(f'Pesquise um número na lista {lista}: '))
    if (i:=find(n, lista)) != -1:
        print(f'Número encontrado na posição {i}!')
    else:
        print('Número não encontrado!')
