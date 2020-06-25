'''
    단순 for 반복문을 사용하여 2단~9단까지의 모든 구구단을 세로로 출력하는
    코드를 작성하세요.
'''
'''
for i in range(2, 10):
    print('%d * %d = %2d' % (i, 1, i * 1))
    print('%d * %d = %2d' % (i, 2, i * 2))
    print('%d * %d = %2d' % (i, 3, i * 3))
    print('%d * %d = %2d' % (i, 4, i * 4))
    print('%d * %d = %2d' % (i, 5, i * 5))
    print('%d * %d = %2d' % (i, 6, i * 6))
    print('%d * %d = %2d' % (i, 7, i * 7))
    print('%d * %d = %2d' % (i, 8, i * 8))
    print('%d * %d = %2d' % (i, 9, i * 9))
    print()
'''
#
dan = 2
num = 1

for i in range(0, 72):
    print('%d * %d = %2d' % (dan, num, dan * num))
    num += 1

    if num == 10:
        dan += 1
        num = 1
