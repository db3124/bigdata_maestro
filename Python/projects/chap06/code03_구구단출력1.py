'''
    [구구단 1]
    for문을 이용하여 구구단 7단 출력하는 코드를 작성하세요.
'''

dan = 7

for i in range(1, 10):
    print('{0:d} * {1:d} = {2:2d}'.format(dan, i, 7*i))
