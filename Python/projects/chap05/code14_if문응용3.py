
select = 0

num = input('1. 수식 입력 후 계산 2. 두 수 사이의 합계: ')

if num == '1':
    formula = input('수식 입력: ')
    answer = eval(formula)
    print('[%s] 계산식의 결과는: %d' % (formula, answer))

elif num == '2':
    userNum = input('두 수 입력: ').split(' ')
    userNum[0] = int(userNum[0])
    userNum[1] = int(userNum[1])
    print('덧셈의 결과는: %d' % (userNum[0]+userNum[1]))

else:
    print('1또는 2를 입력하세요.')