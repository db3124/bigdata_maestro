# 내 것
'''
    사용자에게 년, 월, 일을 입력으로 받아 입력한 년, 월, 일의 요일을 반환하는
    프로그램을 작성하세요.

    [프로그램 실행 예]
    년 월 일을 입력하세요: 2020 6 22

    입력하신 6월 22일은 월요일 입니다.

    ======================================================
    [알고리즘]
    1. 서기 1년 1월 1일은 월요일입니다.
    2. 윤년인 해는 366일 평년인 해는 365일입니다.
    3. 각 월의 일자는 큰달, 작은달로 구분할 수 있고 2월은 윤년 여부에 따라 28일 또는 29일 입니다.

    전체 총 일수 계산
    1) 입력한 년도 전년도까지의 총 일수 구하기
    2) 사용자가 입력한 년도의 전 월까지의 일수를 구하여 총 일수에 더한다.
    3) 사용자가 입력한 일수를 총 일수에 더한다.
'''

ymd = input('년 월 일을 입력하세요: ').split(' ')
ymd = list(map(int, ymd))

lastDays = [-1, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
weekDays = ['일', '월', '화', '수', '목', '금', '토']

# 1. 년도
def ymdFunc():
    global totalDays
    totalDays = 0

    def yearFunc(year):
        for i in range(1, year):
            if i % 4 == 0 and i % 100 != 0 or i % 400 == 0:
                totalDays += 366
            else:
                totalDays += 365

        return totalDays

    # 2. 월
    def monthFunc(month):
        if ymd[0] % 4 == 0 and ymd[0] % 100 != 0 or ymd[0] % 400 == 0:
            lastDays[2] = 29

        for i in range(1, month):
            totalDays += lastDays[month]

        return totalDays

    # 3. 일
    def dayFunc(day):
        totalDays += day

        return totalDays

# def mainFunc():
#     hap = ymdFunc()
#     print('입력하신 %d년 %d월 %d일은 %s요일 입니다.' % (ymd[0], ymd[1], ymd[2], weekDays[hap % 7]))
#
# mainFunc()

hap = yearFunc()
print(hap)