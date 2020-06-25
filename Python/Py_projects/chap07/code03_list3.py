# 변수 선언 부분
aa =[]
bb = []
value = 0

for i in range(0, 100):
    aa.append(value)
    value += 2

for j in range(0, 100):
    bb.append(aa[99 - j])

print('%3d %3d %3d %3d' % (aa[0], aa[1], aa[98], aa[99]))
print('%3d %3d %3d %3d' % (bb[0], bb[1], bb[98], bb[99]))

# for i in range(0, 199):
#     if i % 2 == 0:
#         aa.append(i)
#
# print(aa[0:2], aa[-2::1])
#
# for j in range(198, -1, -1):
#     if j % 2 == 0:
#         bb.append(i)
#
# print(bb[0:2], bb[-2::1])

