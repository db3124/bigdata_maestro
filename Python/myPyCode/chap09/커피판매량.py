# 파일명
file_name = 'C:/BigData/projects/myPyCode/data/coffeeShopSales.txt'

# 파일 열기
f = open(file_name)

header = f.readline()
headerList = header.split()

espresso = []
americano = []
cafelatte = []
cappucino = []

for line in f:
    dataList = line.split()

    espresso.append(int(dataList[1]))
    americano.append(int(dataList[2]))
    cafelatte.append(int(dataList[3]))
    cappucino.append(int(dataList[4]))

f.close()

print('{0}: {1}'.format(headerList[1], espresso))
print('{0}: {1}'.format(headerList[2], americano))
print('{0}: {1}'.format(headerList[3], cafelatte))
print('{0}: {1}'.format(headerList[4], cappucino))

total_sum = [sum(espresso), sum(americano), sum(cafelatte), sum(cappucino)]
total_mean = [sum(espresso)/len(espresso), sum(americano)/len(americano),
              sum(cafelatte)/len(cafelatte), sum(cappucino)/len(cappucino)]

for k in range(len(total_sum)):
    print('[{0}] 판매량'.format(headerList[k+1]))
    print('- 나흘 전체: {0}, 하루 평균: {1}'.format(total_sum[k], total_mean[k]))