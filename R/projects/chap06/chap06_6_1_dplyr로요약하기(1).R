# dplyr 패키지 이용 데이터 가공하기
# summaries(): 요약값 구하기 / group_by(): 집단별 나누기
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math))

exam %>%
  summarise(mean_math = mean(math))

# 2개 이상의 조건으로 요약
exam %>%
  group_by(class) %>%
  summarise(mean_math = mean(math),
            sd_math = sd(math),
            sum_math = sum(math),
            median = median(math),
            n = n())
