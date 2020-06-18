# 극단적인 값: 논리적으로 오류는 아니나, 정삼범위에서 벗어나는 값
# IQR: Interquartile range
boxplot(mpg$hwy)
boxplot(mpg$hwy)$stats

# boxplot을 통계치를 토대로 결측 처리하기
mpg$hwy <- ifelse(mpg$hwy<12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))

# 결측치를 제외한 drv(구동방식)별 hwy의 평균
mpg %>% 
  group_by(drv) %>%
  summarise(mean_hwy = mean(hwy, na.rm = T))

mpg %>% 
  filter(!(is.na(hwy))) %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))
