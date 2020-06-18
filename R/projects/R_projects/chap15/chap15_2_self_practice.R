# Q1. mpg데이터의 drv 변수 타입 확인
my_mpg <- as.data.frame(ggplot2::mpg)

class(my_mpg$drv)

# Q2. drv 변수를 factor 타입으로 변환 후 타입 확인
my_mpg$drv <- as.factor(my_mpg$drv)

class(my_mpg$drv)

# Q3. drv의 범주 알아보기
my_mpg$drv