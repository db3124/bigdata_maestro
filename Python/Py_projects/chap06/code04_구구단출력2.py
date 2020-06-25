'''
    [구구단 2]
    for문을 이용하여 사용자가 원하는 구구단을 출력하는 코드를 작성하세요.
'''

dan = int(input('구구단의 단을 입력하세요: '))

for i in range(1, 10):
    print('%d * %d = %2d' % (dan, i, 7 * i))

