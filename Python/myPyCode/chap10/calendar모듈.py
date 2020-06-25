import calendar

# 기본 3열 출력
print(calendar.calendar(2020))

# 4열로 출력
print(calendar.calendar(2020, m = 4))

print(calendar.month(2020, 3))

# 월의 시작 요일과 월의 일수 반환, 0(월요일)~6(일요일)
print(calendar.monthrange(2020, 3))

print(calendar.firstweekday())
calendar.setfirstweekday(6)
# calendar.setfirstweekday(calendar.SUNDAY)
print(calendar.firstweekday())
print(calendar.month(2020, 3))

# 해당 날짜의 요일을 반환
print(calendar.weekday(2020, 3, 23))

# 윤년 여부
print(calendar.isleap(2019))
print(calendar.isleap(2020))
