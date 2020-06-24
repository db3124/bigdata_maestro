'''
    사용자에게 년, 월, 일을 입력으로 받아 입력한 년, 월, 일의 요일을 반환하는
    프로그램을 작성하세요.

    [프로그램 실행 예]
    년 월 일을 입력하세요: 2020 6 22

    입력하신 2020년 6월 22일은 월요일 입니다.
    ======================================================
    [알고리즘]
    1. 서기 1년 1월 1일은 월요일입니다.
    2. 윤년인 해는 366일 평년인 해는 365일입니다.
    3. 각 월의 일자는 큰달, 작은달로 구분할 수 있고 2월은 윤년 여부에 따라 28일 또는 29일 입니다.
'''

ymd = input('년 월 일을 입력하세요: ')
ymd = ymd.split(' ')

ymd[0] = int(ymd[0]) # year
ymd[1] = int(ymd[1]) # month
ymd[2] = int(ymd[2]) # day

lastDays = [-1, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
weekDays = ['일', '월', '화', '수', '목', '금', '토']
total = 0

# 년: 입력한 년도의 전년도까지의 일수
for year in range(1, ymd[0]):
    if year % 4 == 0 and year % 100 != 0 or year % 400 == 0:
        total += 366
    else:
        total += 365

# 월:
if ymd[0] % 4 == 0 and ymd[0] % 100 != 0 or ymd[0] % 400 == 0:
    lastDays[2] = 29

for month in range(1, ymd[1]):
    total += lastDays[month]

# 일:
total += ymd[2]

# 요일
weekDays[total % 7]

print('입력하신 %d년 %d월 %d일은 %s요일 입니다.' % (ymd[0], ymd[1], ymd[2], weekDays[total % 7]))































'''
    ======================================================
    전체 총 일수 계산
    1) 입력한 년도 전년도까지의 총 일수 구하기
    2) 사용자가 입력한 년도의 전 월까지의 일수를 구하여 총 일수에 더한다.
    3) 사용자가 입력한 일수를 총 일수에 더한다.
'''