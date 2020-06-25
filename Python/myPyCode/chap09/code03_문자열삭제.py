# 문자열 삭제하기: 지정한 문자 외 다른 문자를 만날 때까지만 지정한 문자를 모두 삭제
str1 = 'aaaaPythonaaaa'
str2 = 'bbbPythonaaa'

print(str1.strip('a'))
print(str1.rstrip('a'))
print(str1.lstrip('a'))

# temp = str2.strip('a')
# final = temp.strip('b')
#
# print(final)

print(str2.strip('ba'))



