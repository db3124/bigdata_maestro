# 절대경로
file_name = 'C:/BigData/projects/myPyCode/data/coffeeShopSales.txt'

# 파일 열기
f = open(file_name)

# 한 줄씩 읽고 출력
for line in f:
    print(line, end='')

# 파일 닫기
f.close()