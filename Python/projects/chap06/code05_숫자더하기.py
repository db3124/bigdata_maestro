'''
    1. for문을 이용하여 1부터 100까지의 합을 구하여 출력하는 프로그램을 작성하세요.
    2. for문을 이용하여 1부터 100까지 홀수의 합을 구하여 출력하는 프로그램을 작성하세요.
'''

# 1.
sum = 0

for i in range(1, 101):
    sum += i

print(sum)

# 2.
sum = 0

for i in range(1, 101, 2):
    sum += i

print(sum)

# 3.
sum = 0

for i in range(2, 101, 2):
    sum += i

print(sum)