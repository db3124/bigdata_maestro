import datetime

'''
    date_obj = datetime.date(year, month, day)
    time_obj = datetime.time(hour, minute, second)
    datetime_obj = datetime.datetime(year, month, day, hour, minute, second)
'''
help('datetime.date')

# 날짜
today = datetime.date.today()

special_day = datetime.date(2019, 1, 31)

print(today-special_day)

# 시간
set_time = datetime.time(15, 30, 23)
print(set_time)
print('{}시 {}분 {}초'.format(set_time.hour, set_time.minute, set_time.second))

# 날짜+시간
set_dt = datetime.datetime(2018, 6, 24, 13, 1, 20)
print(set_dt)
print('{}년 {}월 {}일'.format(set_dt.year, set_dt.month, set_dt.day))
print('{}시 {}분 {}초'.format(set_dt.hour, set_dt.minute, set_dt.second))

# 현재 시간
now = datetime.datetime.now()
print('현재 시각: {}'.format(now))
print('Date & time: {:%Y-%m-%d, %H:%M:%S}'.format(now))
print('Date: {:%Y-%m-%d}'.format(now))
print('Time: {:%H:%M:%S}'.format(now))

print('차이: {}'.format(now-set_dt))