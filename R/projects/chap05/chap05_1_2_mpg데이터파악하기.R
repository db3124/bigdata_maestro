# mpg 데이터 파악하기
install.packages("ggplot2")
library(ggplot2)

# ggplot 패키지에 있는 mpg 데이터를 불러온다
# ::(더블클론) -> 특정 패키지의 함수나 데이터 지정 시 이용
my_mpg <- as.data.frame(ggplot2::mpg)

head(my_mpg)

tail(my_mpg)

View(head(my_mpg, 10))
View(tail(my_mpg, 10))

dim(my_mpg)

str(my_mpg)

summary(my_mpg)
