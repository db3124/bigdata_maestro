'''
    [가위바위보 프로그램]

    무한반복, 사용자가 그만두고자 할 때 그만둠.

    실행 예:
    가위바위보: 가위

    컴퓨터: 보, 사용자: 가위
    이겼습니다...^^

'''
import random

kbb = ['가위', '바위', '보']
com = 0
user= ''
result = ''
winCnt = 0
gameCnt = 1
quit = ''

while True:
    user = input('\n[ %d번째 ] 가위바위보를 입력하세요: '% gameCnt)

    com = random.randrange(3)

    print('사용자: %s, 컴퓨터: %s' % (user, com))

    if user == com:
        result = '비겼습니다.'
    elif com < 2 and user == kbb[com + 1] or com == '보' and user == '가위':
        result = '이겼습니다.'
        winCnt += 1
    elif com > 0 and user == kbb[com - 1] or com == '바위' and user == '가위':
        result = '졌습니다.'
    else:
        result = '잘못된 입력입니다.'

    print('결과: %s, %d승 %d전' % (result, winCnt, gameCnt))
    quit = input('\n게임을 종료하시겠습니까?(q): ')

    if quit == 'q' or quit == 'Q':
        break

    gameCnt += 1
