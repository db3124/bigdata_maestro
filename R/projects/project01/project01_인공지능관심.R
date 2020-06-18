# 1. 패키지 로드
library(ggplot2)
library(dplyr)
<<<<<<< HEAD
library(RColorBrewer)
=======
>>>>>>> 2c18c65d150caa7b0cdce5df6ac5d52631781f20

# 2. csv 파일 불러오기
raw_data <- read.csv("./res/2019DATA_7장노년_KEY작업.csv",
                     stringsAsFactors = F)

# 3. 인공지능에 대한 관심 - Q29A2~A3
# Q29A2
q29a2_df <- raw_data %>%
  select(Q29A2)

q29a2_df$Q29A2 <- ifelse(q29a2_df$Q29A2 == 1, "전혀그렇지않다",
                             ifelse(q29a2_df$Q29A2 == 2, "그렇지않은편이다",
                                    ifelse(q29a2_df$Q29A2 == 3, "그런편이다",
                                           ifelse(q29a2_df$Q29A2 == 4, "매우그렇다", q29a2_df$Q29A2))))

# Q29A3
q29a3_df <- raw_data %>%
  select(Q29A3)

q29a3_df$Q29A3 <- ifelse(q29a3_df$Q29A3 == 1, "전혀그렇지않다",
                              ifelse(q29a3_df$Q29A3 == 2, "그렇지않은편이다",
                                     ifelse(q29a3_df$Q29A3 == 3, "그런편이다",
                                            ifelse(q29a3_df$Q29A3 == 4, "매우그렇다", q29a3_df$Q29A3))))

# 4. 그래프 그리기
# Q29A2
ggplot(data = q29a2_df, aes(x = Q29A2)) +
  geom_bar(fill = brewer.pal(4, "PiYG")) +
  scale_x_discrete(limits = c("전혀그렇지않다", "그렇지않은편이다", "그런편이다", "매우그렇다")) +
  coord_flip() +
  xlab("답변") +
  ylab("응답자수") +
  ggtitle("인공지능기술에 빨리 익숙해지기 위해 노력한다")

# Q29A3
ggplot(data = q29a3_df, aes(x = Q29A3)) +
  geom_bar(fill = brewer.pal(4, "PiYG")) +
  scale_x_discrete(limits = c("전혀그렇지않다", "그렇지않은편이다", "그런편이다", "매우그렇다")) +
  coord_flip() +
  xlab("답변") +
  ylab("응답자수") +
  ggtitle("인공지능기술이 적용된 서비스가 나오면, 적극적으로 사용해 본다")

