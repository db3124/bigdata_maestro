# mpg 데이터
# 이상치 만들기
mpg <- as.data.frame(ggplot2::mpg)
mpg[c(10, 14, 58, 93), "drv"] <- "k"
mpg[c(29, 43, 129, 203), "cty"] <- c(3, 4, 39, 42)

# Q1 drv에 이상치가 있는지 확인
table(mpg$drv)
mpg$drv <- ifelse(!(mpg$drv %in% c(4, "f", "r")), NA, mpg$drv)
table(mpg$drv)

# Q2 cty에 이상치가 있는지 확인
boxplot(mpg$cty)
mpg$cty <- ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)
boxplot(mpg$cty)


# Q3 drv별 cty의 평균
mpg %>%
  filter(!(is.na(drv)) & !(is.na(cty))) %>%
  group_by(drv) %>% 
  summarise(mean_cty = mean(cty))

# mpg %>%
#   group_by(drv) %>% 
#   summarise(mean_cty = mean(cty, na.rm = T))
