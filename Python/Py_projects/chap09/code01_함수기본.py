# import 외부 패키지 - 전역 변수 선언 - 함수 선언 - 변수 또는 함수를 사용하는 문장

# 함수 선언 부분
def plus(v1, v2):
    result = 0
    result = v1 + v2
    return result

# 전역 변수 선언 부분
hap = 0

# 메인 코드 부분
hap = plus(100, 200)
print('100과 200의 plus()함수의 결과값은? %d' % hap)


# user = input('두 수를 입력하세요: ').split()
# num = list(map(int, user))
#
# hap = plus(num[0], num[1])
# print('plus()함수의 결과값은? %d' % hap)
