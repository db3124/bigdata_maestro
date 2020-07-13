# 라이브러리 로드
library(dplyr)
library(ggplot2)
library(readxl)

# 서초구 통합데이터파일 불러오기기 
df_seocho <- read_excel('./res/서초구_연도별.xlsx')

# 전력량과 온도 회귀
fit <- lm(kwh~`ondo`,data = df_seocho)

summary(fit)

# 전력량과 습도 회귀
fit <- lm(kwh~`seupdo`,data = df_seocho)

summary(fit)

# 전력량과 고령화비율 회귀
fit <- lm(kwh~`old_man`,data = df_seocho)

summary(fit)

# 전력량과 노후건물비율 회귀
fit <- lm(kwh~`nohu`,data = df_seocho)

summary(fit)

# 전력량과 주택유형 중 아파트비율 회귀
fit <- lm(kwh~`apart`,data = df_seocho)

summary(fit)

# 전력량과 주택유형 중 다세대주택비율 회귀
fit <- lm(kwh~`dasedae`,data = df_seocho)

summary(fit)

# 전력량과 주택유형 중 단독주택비율 회귀
fit <- lm(kwh~`dandok`,data = df_seocho)

summary(fit)

# 전력량과 주택유형 중 비주거용건물내주택비율 회귀
fit <- lm(kwh~`bijugeo`,data = df_seocho)

summary(fit)

# 전력량과 주택유형 중 연릭주택비율 회귀
fit <- lm(kwh~`yeonlib`,data = df_seocho)

summary(fit)

# 전력량과 1인가구비율 회귀
fit <- lm(kwh~`one_gagu`,data = df_seocho)

summary(fit)
