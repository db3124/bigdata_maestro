# 1. 패키지 로드
library(dplyr)
library(ggplot2)
library(RColorBrewer)

# 2. csv 파일 불러오기
raw_data <- read.csv("./res/2019DATA_7장노년_KEY작업.csv",
                     stringsAsFactors = F)

View(raw_data)

# 3. 디지털 조력자 - 잘 모를 때 누구에게 물어보는지? Q16A1~A6
# Q16A1 그런 편이다/매우 그렇다
q16a1_df <- raw_data %>% 
  filter(Q16A1 == 3 | Q16A1 == 4) %>% 
  select(Q16A1)

q16a1_df$Q16A1 <- ifelse(q16a1_df$Q16A1 == 3, "그런 편이다", "매우 그렇다")

q16a1_df <- q16a1_df %>% 
  mutate(ans_name = "스스로") %>% 
  rename(ans_num = Q16A1)

# Q16A2 그런 편이다/매우 그렇다
q16a2_df <- raw_data %>% 
  filter(Q16A2 == 3 | Q16A2 == 4) %>% 
  select(Q16A2)

q16a2_df$Q16A2 <- ifelse(q16a2_df$Q16A2 == 3, "그런 편이다", "매우 그렇다")

q16a2_df <- q16a2_df %>% 
  mutate(ans_name = "가족") %>% 
  rename(ans_num = Q16A2)

# Q16A3 그런 편이다/매우 그렇다
q16a3_df <- raw_data %>% 
  filter(Q16A3 == 3 | Q16A3 == 4) %>% 
  select(Q16A3)

q16a3_df$Q16A3 <- ifelse(q16a3_df$Q16A3 == 3, "그런 편이다", "매우 그렇다")

q16a3_df <- q16a3_df %>% 
  mutate(ans_name = "친구") %>% 
  rename(ans_num = Q16A3)

# Q16A4 그런 편이다/매우 그렇다
q16a4_df <- raw_data %>% 
  filter(Q16A4 == 3 | Q16A4 == 4) %>% 
  select(Q16A4)

q16a4_df$Q16A4 <- ifelse(q16a4_df$Q16A4 == 3, "그런 편이다", "매우 그렇다")

q16a4_df <- q16a4_df %>% 
  mutate(ans_name = "직장동료/지인") %>% 
  rename(ans_num = Q16A4)

# Q16A5 그런 편이다/매우 그렇다
q16a5_df <- raw_data %>% 
  filter(Q16A5 == 3 | Q16A5 == 4) %>% 
  select(Q16A5)

q16a5_df$Q16A5 <- ifelse(q16a5_df$Q16A5 == 3, "그런 편이다", "매우 그렇다")

q16a5_df <- q16a5_df %>% 
  mutate(ans_name = "인터넷검색") %>% 
  rename(ans_num = Q16A5)

# Q16A6 그런 편이다/매우 그렇다
q16a6_df <- raw_data %>% 
  filter(Q16A6 == 3 | Q16A6 == 4) %>% 
  select(Q16A6)

q16a6_df$Q16A6 <- ifelse(q16a6_df$Q16A6 == 3, "그런 편이다", "매우 그렇다")

q16a6_df <- q16a6_df %>% 
  mutate(ans_name = "전문인력") %>% 
  rename(ans_num = Q16A6)

# 합치기
q16_merged_df <- rbind(q16a1_df, q16a2_df, q16a3_df,
                       q16a4_df, q16a5_df, q16a6_df)

# 3. 빈도수 그래프 그리기
q16_merged_df <- q16_merged_df %>% 
  group_by(ans_num, ans_name) %>% 
  summarise(n = n()) %>% 
  mutate(tot = sum(n)) %>% 
  mutate(pct = round(n/tot*100, 1))

ggplot(data = q16_merged_df, aes(x = ans_num, y = pct, fill = ans_name)) +
  geom_col(position = "dodge") +
  xlab("답변") +
  ylab("비율") +
  labs(fill = "범례")

