inStr = input('문자열을 입력하세요: ')

lst = list(inStr)
lst2 = []

# print(lst, lst2)

# for i in range(len(lst)):
#     print(lst2.lst[len(lst)-1])

# ==========================
inStr = input('문자열을 입력하세요: ')

print('내용을 거꾸로 출력 -->', end='')
for i in range(-1, -(len(inStr) + 1), -1):
    print(inStr[i], end='')

