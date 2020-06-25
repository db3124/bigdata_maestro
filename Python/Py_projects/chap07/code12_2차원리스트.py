lst1 = []
lst2 = []
value = 1

for i in range(0, 3):
    for k in range(0, 4):
        lst1.append(value)
        value += 1

    lst2.append(lst1)
    lst1 = []

    for k in range(0, 4):
        print('%3d' % lst2[i][k], end=' ')
    print('')


