# ggplot2 패키지에는 미국 동부중부 437개 지역의 인구통계 정보를 담은 midwest라는 데이터가 들어 있습니다. midwest 데이터를 사용해 데이터 분석 문제를 해결해 보세요.
# 1. 데이터 프레임 ㅎㅇ태로 불러오고, 데이터 특징 파악
my_midwest <- as.data.frame(ggplot2::midwest)
View(head(my_midwest))
View(summary(my_midwest))

# 2. poptotal(전체인구)변수를 total로, popasian 변수를 asian으로 수정
library(dplyr)
my_midwest <- rename(my_midwest, total = poptotal)
my_midwest <- rename(my_midwest, asian = popasian)
head(my_midwest)

# 3. total, asian 변수를 이용해 '전체 인구 대비 아시아 인구 백분율' 파생변수 생성, 히스토그램
my_midwest$percasian2 <- (my_midwest$asian / my_midwest$total) * 100
head(my_midwest$percasian2)
hist(my_midwest$percasian2)

# 4. 아시아 인구 백분율 전체 평균, 평균을 초과하면 "large", 그 외에는 "small"
percasian_mean <- mean(my_midwest$percasian2)
my_midwest$percasian_scale <- ifelse(my_midwest$percasian2 > percasian_mean, "large", "small")
my_midwest[, c("total", "asian", "percasian", "percasian_scale")]

# 5. "large", "small" 해당 지역이 얼마나 되는지 빈도표, 빈도 막대 그래프 만들기
table(my_midwest$percasian_scale)

library(ggplot2)
qplot(my_midwest$percasian_scale)

