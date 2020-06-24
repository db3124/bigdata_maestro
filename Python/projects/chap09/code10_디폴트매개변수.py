## 전역 변수 선언
hap = 0

## 함수 선언
# default parameter는 맨 뒤에 위치해야 한다.
def paraFunc(v1, v2, v3 = 0):
    result = 0
    result = v1 + v2 + v3
    return result

## 메인 코드
hap = paraFunc(10, 20)
print('paraFunc(10, 20)의 결과는: %d' % hap)

hap = paraFunc(10, 20, 30)
print('paraFunc(10, 20, 30)의 결과는: %d' % hap)

# keyword argument: 함수 호출할 때 값을 넘겨줌
# 일반 파라미터는 반드시 값을 넘겨주어야 하고
# 디폴트 파라미터는 넘겨줘도 되고 안 넘겨도 되고
# 넘기면 넘긴 값이 값이 되고, 안 넘기면 디폴트 값이 값이 된다.
hap = paraFunc(v1 = 1, v2 = 3)
hap = paraFunc(v1 = 1)