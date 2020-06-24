## 전역 변수 선언
a = 20

## 함수 선언
def func1():
    global a
    a = 10 # 전역 변수
    print('func1()에서의 a값: %d' % a)

def func2():
    print('func2()에서의 a값: %d' % a)

## 메인 코드
func1()
func2()