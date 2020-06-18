'''
    1. 3, 4
    2. 하하하, 300, 200 + 100, 300
    3. 1, 4
    4. 더할 수 없는 타입의 변수이다. XXX
        111222
    5. input() 함수는 문자열을 출력. 문자열끼리의 곱셈은 안 되기때문에
'''

# 4.
'''
var1 = input() # 111
var2 = input() # 222
result = var1 + var2
print(var1, "+", var2, "=", result)
'''

# 5.
'''
var1 = input() # 111
var2 = input() # 222
result = var1 * var2
print(var1, "*", var2, "=", result)
'''

# 6.
var1 = input() # 111
var2 = input() # 222
result = int(var1) * int(var2)
print(var1, "*", var2, "=", result)

# 7.
var3 = int(input('숫자1 입력: '))
var4 = int(input('숫자2 입력: '))

result = var3 + var4
print(var3, "+", var4, "=", result)

result = var3 * var4
print(var3, "*", var4, "=", result)

result = var3 ** var4
print(var3, "^", var4, "=", result)
