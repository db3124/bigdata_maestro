import random

numbers = []

for i in range(10):
    numbers.append(random.randrange(0, 10))

print(numbers)

for num in range(10):
    if num in numbers:
        print('%d은(는) 있습니다.' % num)
    else:
        print('%d은(는) 없습니다.' % num)

