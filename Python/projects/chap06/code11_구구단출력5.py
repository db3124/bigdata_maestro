'''
    중첩 for 반복문을 사용하여 2단~9단까지의 모든 구구단을
    세로로 출력하는 코드를 작성하세요.
    단 각 단의 앞에는 레이블([X단])을 출력하고 하나의 단이 끝나면 개행을 추가하세요.

    [실행 예]
    [ 2단 ]
    2 * 1 =  2
    2 * 2 =  4
    ...

    [ 3단 ]
    3 * 1 =  3
    3 * 2 =  6
'''

for i in range(2, 10):
    print('[ %d단 ]' % i)

    for j in range(1, 10):
        print('%d * %d = %2d' % (i, j, i * j))

    print()

