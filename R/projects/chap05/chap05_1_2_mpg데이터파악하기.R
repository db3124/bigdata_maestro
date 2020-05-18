# mpg 데이터 파악하기
# 패키지 설치
install.packages("ggplot2")
# 패키지 로드
library(ggplot2)

# ggplot 패키지에 있는 mpg 데이터를 불러옴
# 데이터 가져올 때 df의 이름을 다르게 가져오는 것을 권장
my_mpg <- as.data.frame(ggplot2::mpg)

head(my_mpg)

tail(my_mpg)

View(head(my_mpg, 10))
View(tail(my_mpg, 10))

dim(my_mpg)

# num은 실수, int는 정수
str(my_mpg)

# 문자열인 경우 길이(속성의 데이터 개수), Class, Mode 등이 나옴
summary(my_mpg)
