'''
    print(*vargs, sep=' ', end = '\n')
    *가 붙어있는 변수: 가변인자 매개변수
    가변: 값의 개수가 다를 수 있다.
    *vargs -> tuple
'''

## 전역 변수 선언
hap = 0

## 함수 선언
def paraFunc(*para):
    result = 0
    for num in para:
        result += num

    return result

## 메인 코드
hap = paraFunc(10, 20)
print('매개변수가 2개인 함수를 호출한 결과 ==> %d' % hap)

hap = paraFunc(10, 20, 30)
print('매개변수가 3개인 함수를 호출한 결과 ==> %d' % hap)