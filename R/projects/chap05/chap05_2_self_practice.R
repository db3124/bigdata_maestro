# Q1 ggplot2() 패키지의 mpg 데이터 복사본 만들기
library(ggplot2)
my_mpg2 <- as.data.frame(ggplot2::mpg)

# Q2 복사본 데이터, cty와 hwy 컬럼명 바꾸기
# cty를 city로, hwy를 highway로
head(my_mpg2)
my_mpg2 <- rename(my_mpg2, city = cty) 
my_mpg2 <- rename(my_mpg2, highway = hwy)

my_mpg2 <- rename(my_mpg2, trans = transmission)

# Q3 데이터 일부 출력 후, 변수명 바뀌었는지 확인
View(head(my_mpg2))
