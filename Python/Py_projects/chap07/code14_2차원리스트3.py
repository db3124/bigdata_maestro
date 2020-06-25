lst = []
value = 1

# i 행번호
for i in range(3):
    lst.append([])

    # j 열번호
    for j in range(4):
        lst[i].append(value)
        value += 1
        print('%2d' % lst[i][j], end = '\t')

    print()
