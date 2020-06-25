'''
    사용자에게 하나의 자연수를 입력 받아 입력한 자연수의 모든 약수를
    가로로 출력하는 코드를 작성하세요.
'''

num = int(input('하나의 자연수를 입력하세요: '))

for i in range(1, num+1):
    if num % i == 0:
        print('%d' % i, end=" ")