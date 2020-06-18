# 조건문 활용하여 파생변수 만들기
# 요약 통계량 산출
summary(df_mpg$total)

#히스토그램 생성
hist(df_mpg$total)

# 조건문으로 합격 조건 만들기
df_mpg$test <- ifelse(df_mpg$total >= 20, "pass", "fail")
View(head(df_mpg, 20))

# 빈도표로 합격 판정 자동차 수 살펴보기
table(df_mpg$test)
qplot(df_mpg$test)