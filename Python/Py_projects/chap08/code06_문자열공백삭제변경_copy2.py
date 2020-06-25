'''
    문자열을 입력받아 그중 o를 $을 변경하는 코드
'''

ss = input('문자열을 입력하세요: ')

for i in range(len(ss)):
    if ss[i] == 'o' or ss[i] == 'O':
        print('$', end = '')
    else:
        print(ss[i], end='')

ss = ss.replace('o', '$')
ss = ss.replace('O', '$')