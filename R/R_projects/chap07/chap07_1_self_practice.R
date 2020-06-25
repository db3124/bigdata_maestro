# mpg 데이터로 분석
# mpg 데이터에 결측치 만들기
mpg_new <- as.data.frame(ggplot2::mpg)
mpg_new[c(65, 124, 131, 153, 212), "hwy"] <- NA
mpg_new[65:75,]

# Q1 drv별로 hwy 평균이 어떻게 다른지? 두 변수에 몇 개의 결측치가 있는지 확인
table(is.na(mpg_new$drv))
table(is.na(mpg_new$hwy))

# Q2 filter()를 이용해 hwy 변수의 결측치 제외, 어떤 구동 방식의 hwy 평균이 높은지 알아보기. 하나의 dplyr 구문으로 만들기
mpg_new %>%
  filter(!is.na(hwy)) %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))

mpg_new %>% 
  group_by(drv) %>% 
  summarise(mean(hwy, na.rm = T))
