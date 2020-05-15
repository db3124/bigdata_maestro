# mpg데이터 분석
# Q1 mpg 데이터 복사, 합산 연비 변수 추가
my_mpg <- mpg
my_mpg <- my_mpg %>% mutate(total = cty + hwy) 

# Q2 Q1의 합산 연비 변수를 2로 나누어 평균 연비 변수 추가
my_mpg <- my_mpg %>% mutate(avg = total / 2) 

# Q3 평균 연비 변수 상위 3개
my_mpg %>% arrange(desc(avg)) %>% head(3)

# Q4 원본 데이터를 이용해 Q1~Q3을 하나로 연결된 dplyr 구문으로 만들어 실행
as.data.frame(ggplot2::mpg) %>%
  mutate(total = cty + hwy, avg = (cty + hwy) / 2) %>%
  arrange(desc(avg)) %>% 
  head(3) %>% 
  View
