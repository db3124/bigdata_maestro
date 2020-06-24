hap = 0
i = 0
# aa = [0] * 10
aa = []

while i < 10:
    aa.append(int(input(str(i+1) + "번째 숫자 :")))
    # aa[i] = int(input(str(i+1) + "번째 숫자 :"))
    hap += aa[i]
    i += 1

print('합계 ==> %d'%hap)

i = 0
hap = 0

while i < 101:
    if i % 2 == 0:
        hap += i

    i += 1

print(hap)