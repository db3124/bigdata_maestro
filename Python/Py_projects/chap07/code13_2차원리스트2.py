# 내가한 것

lst1 = []
lst2 = []

for val in range(1, 13):
    lst1.append(val)

    if val % 4 == 0:
        lst2.append(lst1)
        lst1 = []


print(lst2)


