# 3행 4열의 리스트 먼저 만들어 놓기
lst = [[0] * 4, [0] * 4, [0] * 4]

# 반복문으로는 값만 채워 넣기
for i in range(3):
    for j in range(4):
        lst[i][j] = (i * 4) + j + 1
        print('%2d' % lst[i][j], end = '\t')

    print()

'''# 3행 4열의 리스트 먼저 만들어 놓기
lst = [[0] * 4, [0] * 4, [0] * 4]
value = 1

# 반복문으로는 값만 채워 넣기
for i in range(3):
    for j in range(4):
        lst[i][j] = value
        value += 1
        print('%2d' % lst[i][j], end = '\t')

    print()'''