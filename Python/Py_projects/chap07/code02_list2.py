# 변수 선언 부분
lst = []
sum = 0

#
for i in range(0, 4):
    # lst.append(int(input('%d번째 숫자는: ' % (i+1))))
    lst.append(int(input(str(i+1) + '번째 숫자는: ')))
    sum += lst[i]

print('합계: %d' % sum)