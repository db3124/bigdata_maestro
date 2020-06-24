"""
    [변환 함수]
    파이썬에서는 타입의 이름과 같은 이름의 변환 함수를 제공한다.
    int()
    float()
    bool()
    str()
    
"""

# int() 변환 함수
print(int(True), int(3.14), int('1234')) # 정수형태의 문자열만 변환 가능
# print(int('apple'))
# print(int('3.14'))

# float() 변환 함수
print(float(True), float('1234'), float('3.14'))
# print(float('apple'))

# bool() 변환함수: 모든 값을 변환할 수 있다.
print(bool(10), bool(0), bool(-3.14), bool(0.0))
print(bool('apple'), bool(''))

# str() 변환함수: 모든 값을 변환할 수 있다.
print(str(10), str(0), str(-3.14), str(0.0), str(True))
