'''
    중첩 반복문을 사용하여 2단~9단까지의 모든 구구단을 세로로 출력하는
    코드를 작성하세요.
'''

for i in range(2, 10):
    for j in range(1, 10):
        print('%d * %d = %2d' % (i, j, i * j))
        if j == 9:
            print()
