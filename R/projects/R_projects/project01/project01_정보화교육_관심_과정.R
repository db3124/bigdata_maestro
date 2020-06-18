# 1. 패키지 로드
library(ggplot2)
library(dplyr)

# 2. csv 파일 불러오기
raw_data <- read.csv("./res/2019DATA_7장노년_KEY작업.csv",
                     stringsAsFactors = F)

# 3. 정보화교육에 대한 관심도 - 
# Q32A01, Q32A02, Q32A03, Q32A04, Q32A05, Q32A06, Q32A07, Q32A08, Q32A09,
# Q32A10, Q32A11, Q32A12, Q32A13, Q32A14, Q32A15, Q32A16, Q32A17, Q32A18,
# Q32A19, Q32A20, Q32A21, Q32A22 - 총 22문항
# Q32A01 첫번째로 고른 것, Q32A02 두번째로 고른 것...
want_lec <- raw_data %>%
  select(Q32A01, Q32A02, Q32A03, Q32A04, Q32A05, Q32A06, Q32A07, Q32A08, Q32A09,
         Q32A10, Q32A11, Q32A12, Q32A13, Q32A14, Q32A15, Q32A16, Q32A17, Q32A18,
         Q32A19, Q32A20, Q32A21, Q32A22)

table(is.na(want_lec$Q32A17))

pick1 <- data.frame(table(want_lec$Q32A01))
pick2 <- data.frame(table(want_lec$Q32A02))
pick3 <- data.frame(table(want_lec$Q32A03))
pick4 <- data.frame(table(want_lec$Q32A04))
pick5 <- data.frame(table(want_lec$Q32A05))
pick6 <- data.frame(table(want_lec$Q32A06))
pick7 <- data.frame(table(want_lec$Q32A07))
pick8 <- data.frame(table(want_lec$Q32A08))
pick9 <- data.frame(table(want_lec$Q32A09))
pick10 <- data.frame(table(want_lec$Q32A10))
pick11 <- data.frame(table(want_lec$Q32A11))
pick12 <- data.frame(table(want_lec$Q32A12))
pick13 <- data.frame(table(want_lec$Q32A13))
pick14 <- data.frame(table(want_lec$Q32A14))
pick15 <- data.frame(table(want_lec$Q32A15))
pick16 <- data.frame(table(want_lec$Q32A16))
pick17 <- data.frame(table(want_lec$Q32A17))
pick18 <- data.frame(table(want_lec$Q32A18))
pick19 <- data.frame(table(want_lec$Q32A19))
pick20 <- data.frame(table(want_lec$Q32A20))
pick21 <- data.frame(table(want_lec$Q32A21))
pick22 <- data.frame(table(want_lec$Q32A22))


pick_cnt <- rbind(pick1, pick2, pick3, pick4, pick5, pick6, pick7,
               pick8, pick9, pick10, pick11, pick12, pick13, pick14,
               pick15, pick16, pick17, pick18, pick19, pick20, pick21, pick22)

# csv로 저장한 후 각 보기별 빈도 정리하기 
write.csv(pick_cnt, "./res/pick_cnt.csv")

# 보기별 빈도 정리한 csv 파일 불러오기
pick_freq <- read.csv("./res/pick_freq.csv",
                     stringsAsFactors = F)

# 그래프 그리기
ggplot(data = pick_freq, aes(x = reorder(ans, freq), y = freq)) +
  geom_col(fill = "lightblue") +
  coord_flip() +
  xlab("응답자수") +
  ylab("선택지") +
  ggtitle("정보화교육 - 선호 과정(복수응답)")
