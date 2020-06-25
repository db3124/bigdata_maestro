'''
    사용자에게 하나의 자연수를 입력 받아 입력한 자연수의 모든 약수를
    가로로 출력하는 코드를 작성하세요.
    단, 한 줄에는 5개의 값만 출력한 후 개행합니다.
'''

num = int(input('하나의 자연수를 입력하세요: '))

count = 0

for i in range(1, num+1):
    if num % i == 0:
        print('%5d' % i, end=" ")
        count += 1
        if count % 5 == 0:
            print()
