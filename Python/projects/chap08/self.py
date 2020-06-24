str1 = '파이썬은완전재미있어요'
lst = list(str1)

for i in range(len(lst)):
    if i % 2 != 0:
        lst[i] = '#'
    else:
        lst[i]

mySep = ''
print(mySep.join(lst))