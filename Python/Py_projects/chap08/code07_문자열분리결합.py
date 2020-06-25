'''
    dir(str)
    str method

    # 문자열 분리 및 결합하기(문자열의 공백, 개행, 특정 문자를 기준으로)
    'split', 'splitlines', ★'join'

'''

ss = input('날짜(연/월/일) 입력 ==> ')

ss = ss.split('/')

a = '입력한 날짜의 10년후: %d년 %s월 %s일 ' % (int(ss[0])+10, ss[1], ss[2])
print(a)
