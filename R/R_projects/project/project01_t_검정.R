# 1. 패키지 로드
library(ggplot2)
library(dplyr)

# 2. csv 파일 불러오기
raw_data <- read.csv("./res/2019DATA_7장노년_KEY작업.csv",
                     stringsAsFactors = F)

# 3. t 검정
#18번2(친구사귀기) - 29번3(관심도)
fri <- raw_data %>%
  select(Q18A2, Q29A3, ADQ101)

fri <- rename(fri, 지역 = ADQ101,
              친구 = Q18A2,
              관심도 = Q29A3)

table(is.na(fri))

fri$관심도 <- fri$관심도*10

fri$관심도 <- as.numeric(fri$관심도)

fri <- data.frame(fri)

fri <- fri %>%
  select(친구, 관심도) %>%
  filter(관심도 %in% c("10", "40"))

t.test(data = fri, 친구 ~ 관심도, var.equal = T)

#24번1(스마트폰보유현황) - 24번3(삶의 도움정도)
smart_help <- raw_data %>%
  select(Q24AA1, Q24AA3, ADQ101)

smart_help <- rename(smart_help, 지역 = ADQ101,
                     도움도 = Q24AA3,
                     보유 = Q24AA1)

table(is.na(smart_help))

smart_help$도움도 <- smart_help$도움도*10

smart_help$도움도 <- as.numeric(smart_help$도움도)

smart_help <- data.frame(smart_help)

table(smart_help$도움도)

smart_help <- smart_help %>%
  select(보유, 도움도) %>%
  filter(도움도 %in% c("10", "20"))

t.test(data = smart_help, 보유 ~ 도움도, var.equal = T)

# 9번1(SNS) - 14번1(경제활동) >pc기준
to <- raw_data %>%
  select(Q14A1, Q9A1, ADQ101)

to <- rename(to, 지역 = ADQ101,
             경제활동 = Q14A1,
             SNS = Q9A1)

table(is.na(to))

to <- to %>%
  filter(!is.na(지역))

to$경제활동 <- to$경제활동*10

to$경제활동 <- as.numeric(to$경제활동)

to <- data.frame(to)

to <- to %>%
  select(경제활동, SNS) %>%
  filter(경제활동 %in% c("10", "40"))

t.test(data = to, SNS~경제활동, var.equal = T)

# 9번1(SNS) - 14번1(경제활동) > 스마트폰 기준
to2 <- raw_data %>%
  select(Q14B1, Q9B1, ADQ101)

to2 <- rename(to2, 지역 = ADQ101,
              경제활동 = Q14B1,
              SNS = Q9B1)

table(is.na(to2))

to2 <- to2 %>%
  filter(!is.na(경제활동))

to2$경제활동 <- to2$경제활동*10

to2$경제활동 <- as.numeric(to2$경제활동)

to2 <- data.frame(to2)

to2 <- to2 %>%
  select(경제활동, SNS) %>%
  filter(경제활동 %in% c("10", "40"))

t.test(data = to2, SNS~경제활동, var.equal = T)

