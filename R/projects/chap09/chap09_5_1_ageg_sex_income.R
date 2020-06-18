# 연령대 및 성별 월급 차이
# 1. 변수 검토 및 전처리: 연령대, 성별, 월급
# 필요한 패키지 로드
library(foreign)
library(dplyr)
library(ggplot2)

# foreign 패키지로 파일 불러오기
raw_welfare <- read.spss(file = "./res/Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)
welfare <- raw_welfare

# 변수명 바꾸고, 필요한 열만 추출
welfare <- raw_welfare %>% 
  rename(sex = h10_g3,
         birth = h10_g4,
         marriage = h10_g10,
         religion = h10_g11,
         income = p1002_8aq1,
         code_job = h10_eco9,
         code_region = h10_reg7) %>% 
  select(sex, birth, marriage, religion, income, code_job, code_region)

# 성별 이름 바꾸기
welfare$sex <- ifelse(welfare$sex == 1, "male", "female")
table(welfare$sex)

# 전체 인원 중 월급 받는 사람만 추출
# income의 NA 처리
welfare$income <- ifelse(welfare$income %in% c(0, 9999),
                         NA, welfare$income)

welfare_income <- welfare %>%
  filter(!is.na(income))

# age 변수 추가
welfare_income$age <- 2015 - welfare_income$birth + 1
head(welfare_income)

# 연령대 변수 추가
welfare_income <- welfare_income %>%
  mutate(ageg = ifelse(age < 30, "twenties",
                       ifelse(age < 40, "thirties",
                              ifelse(age < 50, "forties",
                                     ifelse(age < 60, "fifties", "the older")))))

head(welfare_income)
table(welfare_income$ageg)

View(welfare_income)

ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) +
  geom_col(fill = c(1:5)) +
  scale_x_discrete(limits = c("twenties", "thirties",
                              "forties", "fifties", "the older"))

# -------------------------------------------------
# 2. 변수 간 관계 분석
# 2-1. 연령대 및 성별 월급 차이 분석하기
# 연령대 및 성별 월급 평균표 만들기
sex_income <- welfare_income %>% 
  group_by(ageg, sex) %>% 
  summarise(mean_income = mean(income))

sex_income

# 그래프 만들기
ggplot(data = sex_income, aes(x = ageg,
                              y = mean_income, fill = sex)) +
  geom_col() +
  scale_x_discrete(limits = c("twenties", "thirties",
                              "forties", "fifties", "the older"))

ggplot(data = sex_income, aes(x = ageg,
                              y = mean_income, fill = sex)) +
  geom_col(position = "dodge") +
  scale_x_discrete(limits = c("twenties", "thirties",
                              "forties", "fifties", "the older"))

# 2-2. 나이 및 성별 월급 차이 분석하기
sex_income2 <- welfare_income %>% 
  group_by(sex, age) %>% 
  summarise(mean_income = mean(income))

sex_income2

ggplot(data = sex_income2, aes(x = age, y = mean_income, col = sex)) +
  geom_line()

