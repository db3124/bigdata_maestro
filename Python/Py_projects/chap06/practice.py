'''

    1. 시작값 / 끝값+1 / 증가값
    2. 99번
    3. range(100, 201, 2)
    4. 81번

'''

# 5.
dan = int(input('구구단의 단을 입력하세요: '))

for num in range(9, 0, -1):
    print('%d * %d = %2d' % (dan, num, dan * num))

print()

# 6.
i, hap = 0, 0

while i <= 100:
    if i % 2 == 0:
        hap += i

    i += 1

print('0과 100 사이에 있는 짝수의 합계: %d' % hap)

# 7.
