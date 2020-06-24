inStr = '   한글 Python 프로그래밍    '

for i in range(len(inStr)):
    if inStr[i] == ' ':
        print('', end='')
    else:
        print(inStr[i], end='')

# inStr = inStr.replace(' ', '')
#
# print(inStr)