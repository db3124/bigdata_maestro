'''
    문자열이 괄호로 감싸 있지 않으면 괄호로 감싸 주는 프로그램 작성
'''

ss = input('문자열을 입력하세요: ')
result = ''

if ss.startswith('(') == False:
    print('(', end='')

print(ss, end='')

if ss.endswith(')') == False:
    print(')', end='')