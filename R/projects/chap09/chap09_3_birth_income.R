# 나이와 월급의 관계
# 1. 나이 변수 검토 및 전처리. 월급 받는 사람들만 분석
class(welfare$birth)

# income의 NA 처리
welfare$income <- ifelse(welfare$income %in% c(0, 9999), NA, welfare$income)
welfare_income <- welfare %>%
  filter(!is.na(income))

# 이상치 확인
summary(welfare_income$birth)

# 결측치 확인
table(is.na(welfare_income$birth))

# 이상치 처리 하기
welfare_income$birth <- ifelse(welfare_income$birth == 9999, NA, welfare_income$birth)

qplot(welfare_income$birth)

# 파생변수 만들기
welfare_income$age <- 2015 - welfare_income$birth + 1
summary(welfare_income$age)

qplot(welfare_income$age)

# 2. 나이와 월급의 관계 분석하기
age_income <- welfare_income %>% 
  group_by(age) %>% 
  summarise(mean_income = mean(income))

age_income

# 성별 구분 없이 연령으로만 그래프 그림
ggplot(data = age_income, aes(x = age, y = mean_income)) + geom_line()

# 성별 구분하여 그래프 그림
age_income2 <- welfare_income %>% 
  group_by(sex, age) %>% 
  summarise(mean_income = mean(income))

head(age_income2)

ggplot(data = age_income2, aes(x = age, y = mean_income, col = sex)) + geom_line()

