'''
    [가위바위보 프로그램]

    실행 예:
    가위바위보: 가위

    컴퓨터: 보, 사용자: 가위
    이겼습니다...^^
'''

import random

user = input('가위바위보: ')

kbb = ['가위', '바위', '보']

computer = kbb[random.randrange(0, 3)]

if user == '가위' and computer == '보':
    print('컴퓨터: {0:s}, 사용자: {1:s}'.format(computer, user))
    print('이겼습니다.')
elif user == '바위' and computer == '가위':
    print('컴퓨터: {0:s}, 사용자: {1:s}'.format(computer, user))
    print('이겼습니다.')
elif user == '보' and computer == '바위':
    print('컴퓨터: {0:s}, 사용자: {1:s}'.format(computer, user))
    print('이겼습니다.')
elif user == computer:
    print('컴퓨터: {0:s}, 사용자: {1:s}'.format(computer, user))
    print('비겼습니다.')
elif user != '가위' and user != '바위' and user != '보':
    print('컴퓨터: {0:s}, 사용자: {1:s}'.format(computer, user))
    print('잘못된 입력입니다.')
else:
    print('컴퓨터: {0:s}, 사용자: {1:s}'.format(computer, user))
    print('졌습니다.')
