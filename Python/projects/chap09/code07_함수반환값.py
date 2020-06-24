## 전역 변수 선언 부분 ##
hap = 0

## 함수 선언 ##
def func1(isreturn):
    if isreturn:
        return 100

def func2():
    print('반환값이 없는 함수 실행')

# 메인 코드
hap = func1(False)
print('func1()에서 돌려준 값 ==> %d' % hap)

result = func2()
print(result)