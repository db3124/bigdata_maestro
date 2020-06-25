num = input('16진수 한글자 입력: ')

lst = list(range(0, 11))

for i in range(0, 11):
    lst[i] = int(lst[i])

lst2 = ['A', 'B', 'C', 'D', 'E', 'F']

if num in lst or num in lst2:
    print('10진수 ==> %d' % int(num, 16))
else:
    print('16진수가 아닙니다')