# 파생변수 만들기
df <- data.frame(var1 = c(4, 3, 8), var2 = c(2, 6, 1))
df

# 합 파생변수 추가
df$var_sum <- df$var1 + df$var2
df

# 평균 파생변수 추가
df$var_mean <- df$var_sum / 2
df

# mpg 데이터에 통합 연비 속성 추가
library(ggplot2)
mpg_new <- mpg
mpg_new$total <- (mpg_new$cty + mpg_new$hwy) / 2
mean(mpg_new$total)

# 조건문 활용하여 파생변수 만들기
# 요약 통계량 산출
summary(mpg_new$total)

#히스토그램 생성
hist(mpg_new$total)

# 조건문으로 합격 조건 만들기
mpg_new$test <- ifelse(mpg_new$total >= 20, "pass", "fail")
head(mpg_new, 20)

# 빈도표로 합격 판정 자동차 수 살펴보기
table(mpg_new$test)
qplot(mpg_new$test)
