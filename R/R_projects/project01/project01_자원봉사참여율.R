# 1. 패키지 로드
library(readxl)
library(ggplot2)
library(dplyr)

# 2. csv 파일 불러오기
volunteer <- read_excel("./res/연령별자원봉사활동2018.xlsx")

# 3. 자워봉사참여율
volunteer <- data.frame(volunteer)

View(volunteer)

# 4. 그래프 그리기
ggplot(data = volunteer, aes(x = 분류, y = 자원봉사참여율)) +
  geom_col()
