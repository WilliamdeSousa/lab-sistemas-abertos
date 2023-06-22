n = int(input())
dv = [2, 3, 5, 7, 11, 13, 17, 19, 23, 27, 29, 31, 33, 37, 39]
while n != -1:
    nd = 0
    if (n % 2 == 0 and n != 2) or n == 1:
        print(0)
    else:
        i = 2
        while i < (n / 2) and nd == 0:
            if n % i == 0:
                nd += 1
            i += 1
        if nd == 0:
            print(1)
        else:
            print(0)
    n = int(input())
