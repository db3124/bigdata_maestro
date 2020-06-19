# 변수 선언 부분
aa =[]
bb = [0] * 100

for i in range(0, 100):
    aa.append(i * 2)
    bb[99 - i] = aa[i]

print('%3d %3d %3d %3d' % (aa[0], aa[1], aa[98], aa[99]))
print('%3d %3d %3d %3d' % (bb[0], bb[1], bb[98], bb[99]))

# print('%3d %3d %3d %3d' % (aa[0], aa[1], aa[-2], aa[-1]))
# print('%3d %3d %3d %3d' % (bb[0], bb[1], bb[-2], bb[-1]))