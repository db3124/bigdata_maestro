inStr = input('문자열을 입력하세요: ')

# new = ''
# for i in range(len(inStr)):
#     new += inStr[len(inStr)-1-i]
#
# print(new)

# =================================
for i in range(-1, -(len(inStr)+1), -1):
    print(inStr[i], end='')