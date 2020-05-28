# Date 타입
d1 <-Sys.Date()
d1
class(d1)

d2 <- as.Date("2020-07-30")
d2
class(d2)

d3 <- as.Date("07/30/2020") # 문자열이 표준서식을 따르지 않습니다 
d3 <- as.Date("07/30/2020", format = "%m/%d/%Y")
d4 <- as.Date("07/30/20", format = "%m/%d/%y")
class(d3)
class(d4)

# Date -> chr
my_date <- format(d2, format = "%Y년 %m월 %d일")
my_date
class(my_date)

# 날짜 연산
d1 < d2

d2-d1

d1 + 100

d1 - 100

# =================================================
# 시간 표현
Sys.time()
t1 <- Sys.time()
t1

class(t1)
# "POSIXct" "POSIXt" : Portable Operating System Interface

# 문자열로 변환
my_datetime <- format(t1, format = "%Y년 %m월 %d일 %H시 %M분 %S초")
my_datetime

# 문자열을 POSIXct로
t2 <- strptime("2020년 07월 31일 5시 05분 15초",
               format = "%Y년 %m월 %d일 %H시 %M분 %S초")
t2
class(t2)

# 시간 연산
t1 > t2

t2 - t1

t1 + 100 # 100초
t1 - 100
