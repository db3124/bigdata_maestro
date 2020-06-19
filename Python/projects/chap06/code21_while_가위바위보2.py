'''
    [가위바위보 프로그램]

    실행 예:
    가위바위보: 가위

    컴퓨터: 보, 사용자: 가위
    이겼습니다...^^

    사용자가 3연속 이길 때까지 반복
'''

import random

# 변수 선언은 import 다음에 독립된 것으로 하는 것이 좋다!!
kbb = ['가위', '바위', '보']
com = 0
user = ''
result = ''
winCnt = 0
count = 1

while winCnt < 3:
    com = random.randrange(3)
    user = input('\n\n[%d] 가위바위보: ' % (count))

    print('\n컴퓨터: %s, 사용자: %s' % (kbb[com], user))

    if kbb[com] == user:
        result = '비겼습니다.'
        winCnt = 0
    elif com < 2 and user == kbb[com + 1] or com == 2 and user == '가위':
        result = '이겼습니다.'
        winCnt += 1
    elif com > 0 and user == kbb[com - 1] or com == 0 and user == '보':
        result = '졌습니다.'
        winCnt = 0
    else:
        print('잘못된 입력입니다.')

    print('결과: %s, 현재 연승: %d' % (result, winCnt))

    count += 1