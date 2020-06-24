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
# 윤년 여부
def is_leap_year(year):
    result = False

    if year % 4 == 0 and year % 100 != 0 or year % 400 == 0:
        result = True

    return result

# 연, 월 입력받아 월의 마지막 날짜 반환
def get_month_lastday(year, month):
    lastDays = [-1, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

    if is_leap_year(year):
        lastDays[2] = 29

    return lastDays[month]

# 연, 월, 일을 더해 총 일수 구하기
def get_total_days(year, month, day):
    total_days = 0

    for y in range(1, year):
        if is_leap_year(y):
            total_days += 366
        else:
            total_days += 365

    for m in range(1, month):
        total_days += get_month_lastday(year, m)

    total_days += day

    return total_days

# 요일 반환
def get_weekday(total_days):
    weekdays = ['일', '월', '화', '수', '목', '금', '토']

    return weekdays[total_days % 7]

def main():
    ymd = input('년 월 일을 입력하세요: ')
    ymd = ymd.split(' ')

    ymd = list(map(int, ymd))

    total_days = get_total_days(ymd[0], ymd[1], ymd[2])

    weekday = get_weekday(total_days)

    print('입력하신 %d년 %d월 %d일은 %s요일 입니다.' % (ymd[0], ymd[1], ymd[2], weekday))

main()
