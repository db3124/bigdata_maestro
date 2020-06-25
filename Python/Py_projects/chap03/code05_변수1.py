# 변수의 선언과 사용
# 변수의 선언
# 변수값 초기화와 동시에 저장
boolVar = True
intVar = 0
floatVar = 0.0
strVar = ""

print(boolVar, intVar, floatVar, strVar)

# 튜플
boolVar2, intVar2, floatVar2, strVar2 = False, 0, 0.0, ""

print(boolVar2, intVar2, floatVar2, strVar2)

# 파이썬에서 int 값의 범위는 거의 무한대(메모리 허용 범위 내에서)
intVar3 = 1234567890123456789012345678901234567890
print(intVar3 * 1234567890)

# complex; 복소수
com1 = 3 + 4j
type(com1)
dir(com1)

# 실수부
com1.real
help(com1.real)

# 허수부
com1.imag

# 켤레 복소수
com1.conjugate()

# 문자열
str1 = '대한민국'
str1[0]
str1[1]
str1[2]
str1[3]
str1[4] # IndexError: string index out of range
