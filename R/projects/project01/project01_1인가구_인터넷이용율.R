# 1. 패키지 로드
library(ggplot2)
library(dplyr)

# 2. csv 파일 불러오기
raw_data <- read.csv("./res/2019DATA_7장노년_KEY작업.csv",
                     stringsAsFactors = F)

# 3. 1인 가구 - 인터넷이용률 떨어진다
# 인터넷이용여부 - Q3, 가구구성형태 - ADQ8 
household_internet <- raw_data %>% 
  select(ADQ8, Q3)

household_internet$ADQ8 <- ifelse(household_internet$ADQ8 == 1,
                                  "1인가구", "2인이상가구")

household_internet <- household_internet %>% 
  group_by(ADQ8, Q3) %>% 
  summarise(n = n()) %>% 
  mutate(tot = sum(n)) %>% 
  mutate(pct = round(n/tot*100, 1))

# 4. 그래프 그리기
ggplot(data = household_internet, aes(x = ADQ8, y = pct, fill = Q3)) +
  geom_col()+
  xlab("가구구성형태") +
  ylab("인터넷이용여부") +
  labs(fill = "범례")
