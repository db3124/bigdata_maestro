parking = [0] * 10
top = 0

parking[top] = 'A'
top += 1

parking[top] = 'B'
top += 1

parking[top] = 'C'
top += 1

# pop
top -= 1
print(parking[top])
parking[top] = 0

parking[top] = 'D'
top += 1

top -= 1
print(parking[top])
parking[top] = 0

top -= 1
print(parking[top])
parking[top] = 0

top -= 1
print(parking[top])
parking[top] = 0