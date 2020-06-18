# 통계적 가설 검정
# compact 자동차와 suv 자동차의 도시 연비 t검정
library(ggplot2)

# 데이터 불러오기
my_mpg <- as.data.frame(ggplot2::mpg)

# 라이브러리 로드
library(dplyr)

table(my_mpg$class)

mpg_diff <- mpg %>% 
  filter(class %in% c("compact", "suv")) %>% 
  select(class, cty)

head(mpg_diff)

table(mpg_diff$class)

# t검정
t.test(data = mpg_diff, cty ~ class, var.equal = T)

?t.test()

# 일반 휘발유와 고급 휘발유의 도시 연비 t검정
mpg_diff2 <- my_mpg %>%
  filter(fl %in% c("r", "p")) %>% 
  select(fl, cty)

head(mpg_diff2)

table(mpg_diff2$fl)

# t검정
t.test(data = mpg_diff2, cty ~ fl, var.equal = T)

# Welch Two Sample t-test
t.test(data = mpg_diff2, cty ~ fl, var.equal = F)
