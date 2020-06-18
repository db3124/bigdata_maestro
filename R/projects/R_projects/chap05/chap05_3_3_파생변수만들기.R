# 파생변수 만들기
df <- data.frame(var1 = c(4, 3, 8),
                 var2 = c(2, 6, 1))

df

# 합 파생변수 추가
df$var_sum <- df$var1 + df$var2
df

# 평균 파생변수 추가
df$var_mean <- df$var_sum / 2
df

# mpg 데이터에 통합 연비 속성 추가
library(ggplot2)
df_mpg <- mpg
df_mpg$total <- (df_mpg$cty + df_mpg$hwy) / 2
mean(df_mpg$total)

# 조건문 활용하여 파생변수 만들기
# 요약 통계량 산출
summary(df_mpg$total)

#히스토그램 생성
hist(df_mpg$total)

# 조건문으로 합격 조건 만들기
df_mpg$test <- ifelse(df_mpg$total >= 20, "pass", "fail")
View(head(df_mpg, 20))

# 빈도표로 합격 판정 자동차 수 살펴보기
table(mpg_new$test)
qplot(mpg_new$test)
