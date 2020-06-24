import random

# 3행 4열의 리스트 먼저 만들어 놓기
# lst = [[1, 2, 3, 4], [11, 22], [111, 222, 333]]
lst = [[0] * 4, [0] * 2, [0] * 3]

for i in range(3):
    for j in range(len(lst[i])):
        lst[i][j] = random.randrange(100)
        print('%2d' % lst[i][j], end = ' ')

    print()
