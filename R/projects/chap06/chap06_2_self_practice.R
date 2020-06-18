# mpg 데이터 분석
# Q1 displ(배기량) 4 이하인 자동차, 5 이상인 자동차 중 어떤 자동차의 hwy(고속도로 연비)가 평균적으로 더 높은지?
library(ggplot2)
my_mpg <- as.data.frame(mpg)


my_mpg_displ4 <- my_mpg %>% filter(displ <= 4)
my_mpg_displ5 <- my_mpg %>% filter(displ >= 4)
mean(my_mpg_displ4$hwy)
mean(my_mpg_displ5$hwy)

# mean((my_mpg %>% filter(displ <= 4))$hwy)
# mean((my_mpg %>% filter(displ >= 5))$hwy)

# Q2 자동차 제조 회사에 따라 도시 연비가 다른지 알아보려 함. "audi"와 "toyota"중 어느 manufacturer의 cty(도시 연비)가 평균적으로 더 높은지?

my_mpg_audi <- my_mpg %>% filter(manufacturer == "audi")
my_mpg_toyota <- my_mpg %>% filter(manufacturer == "toyota")
mean(my_mpg_audi$cty)
mean(my_mpg_toyota$cty)
                  
# mean((my_mpg %>% filter(manufacturer == "audi"))$cty)
# mean((my_mpg %>% filter(manufacturer == "toyota"))$cty)

# Q3 "chevrolet" "ford" "honda" 각각의 고속도로 연비 평균. 데이터 추출 후 평균 구하기
my_mpg_manuf3 <- my_mpg %>% filter(manufacturer %in% c("chevrolet","ford", "honda"))
mean(my_mpg_manuf3$hwy)                                   
                                   
# mean((my_mpg %>% filter(manufacturer %in% c("chevrolet","ford", "honda")))$hwy)
