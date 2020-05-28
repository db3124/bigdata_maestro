# 파일 불러오기
exam <- read.csv("csv_exam.csv")

# 데이터 전체 출력
exam

# 행 출력
exam[1,]

exam[c(1, 3, 5),]

exam[exam$class == 1,]

# 열 출력
exam[, 1] # 벡터 반환

exam[, c(1:3)] # d.f 반환

exam[, "math"]

exam[, c("math", "science")]

# 행, 열 동시 추출
exam[exam$class == 2, c(1:3)]

exam[exam$class == 3, c("math", "english", "science")]

# R 내장 기본함수 이용
exam$tot <- (exam$english + exam$math + exam$science) / 3
aggregate(data = exam[exam$math >= 50 & exam$english >= 80,],
          tot ~ class, mean)

# dplyr 패키지 이용
library(dplyr)
exam %>%
  filter(math >= 50 & english >= 80) %>% 
  mutate(tot = (english + math + science) / 3) %>% 
  group_by(class) %>% 
  summarise(mean_class = mean(tot))
