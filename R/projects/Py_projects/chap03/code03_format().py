# format()
print('%d %d %d' % (123, 123, 123))
print('{0:d} {0:d} {0:d}'.format(123))

print('{0:d} {1:d} {2:d}'.format(1, 2, 3))

print('{0:d} {0:d} {2:d}'.format(1, 2, 3))

print('{2:d} {1:d} {0:d}'.format(1, 2, 3))


# 객체는 클래스로부터 만들어진다
# class 'str'로부터 str1이 만들어진다.
str1 = 'hello'

# 객체의 종류 알기
type(str1)

# 객체의 속성 및 메서드 알기
# __~~~~__ : 내부 특별 속성과 메서드 -> 건드리지 말 것. 사용x
dir(str1)

# 특정 속성과 메서드 알기
help(str1.format)
