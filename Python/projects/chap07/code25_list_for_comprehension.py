# set1 = {10, 20, 30, 40, 50}
#
# lst = list(set1)
# print(lst)
#
# for val in set1:
#     print(val)

# =======================================
# lst = []
#
# for i in range(1, 6):
#     lst.append(i ** 2)

# list for comprehension: 하나의 계산식만 올 수 있다.
# lst = [i ** 2 for i in range(1, 6)]

lst = []
for i in range(1, 6):
    if i % 2 == 0:
        lst.append(i ** 2)

lst = [i ** 2 for i in range(1, 6) if i % 2 == 0]

print(lst)
