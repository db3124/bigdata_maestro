# 1. 패키지 로드
library(ggplot2)
library(dplyr)

# 2. csv 파일 불러오기
convenience <- read.csv("./res/생활편의시설.csv",
                        stringsAsFactors = F)

View(convenience)

# 3. 생활편의시설
convenience <- data.frame(convenience)

# 4. 그래프 그리기
ggplot(data = convenience, aes(x =  reorder(시설, -개수), y = 개수)) +
  geom_col() +
  xlab("시설")
