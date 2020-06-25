# self study 4-2
num = int(input('시프트할 숫자는? '))
count = int(input('출력할 횟수는? '))

i = 0
for i in range(0, count):
    print('%d << %d = %d' % (num, i+1, num << (i+1)))

i = 0
for i in range(0, count):
    print('%d >> %d = %d' % (num, i+1, num >> (i+1)))


