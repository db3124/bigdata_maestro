'''

    1.
    if 조건식:
        실행할 문장 1
    else:
        실행할 문장 2

    2. 100이군요.
    3. 출력x
    4. a % 3 == 0
    5. 적당한 수입니다.

'''

# 6.
score = 55

if score >= 60:
    print('합격입니다.')
elif score >= 40:
    print('불합격이지만 과락은 아닙니다.')
else:
    print('불합겨이면서 과락입니다.')

# 7.
import random

aNum = random.randrange(1, 7)
bNum = random.randrange(1, 7)

print('A의 주사위 숫자는 %d입니다.' % aNum)
print('B의 주사위 숫자는 %d입니다.' % bNum)

if aNum > bNum:
    print('A가 이겼습니다.')
elif aNum < bNum:
    print('B가 이겼습니다.')
else:
    print('비겼습니다.')

# 8.은 패스

# 9.


