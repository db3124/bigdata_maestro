# 1. 패키지 로드
library(ggplot2)
library(dplyr)

# 2. csv 파일 불러오기
raw_data <- read.csv("./res/2019DATA_7장노년_KEY작업.csv",
                     stringsAsFactors = F)

# 3. 스마트폰을 소유하더라도 활용을 하지 못 하는 이유 -
# Q15A1
reason <- c("배우기어려움", "이용요금부담", "이용기기없음",
            "집에서접속안됨", "신체적제약", "도움요청할사람없음")

smart_no_use <- data.frame(이유 =  reason,
                             빈도 = c(96, 13, 21, 4, 7, 2))


# 3. 그래프 그리기
ggplot(data = smart_no_use, aes(x = 이유, y = 빈도)) +
  geom_col()

ggplot(data = smart_no_use, aes(x = reorder(이유, 빈도), y = 빈도)) +
  geom_col() +
  coord_flip() +
  xlab("이유")
