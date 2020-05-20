# 성별에 따른 월급 차이
# 1. 성별 변수 검토 및 전처리
class(welfare$sex)

# 결측치, 이상치 확인
table(is.na(welfare$sex))
table(welfare$sex)

# 검토 결과 이상치 없지만, 혹시 모르니 이상치 처리하는 코드 입력
welfare$sex <- ifelse(welfare$sex == 9, NA, welfare$sex)

table(is.na(welfare$sex))

# 1을 male로 2를 female로 변수명 수정
welfare$sex <- ifelse(welfare$sex == 1, "male", "female")

# 월급을 받는 사람 중에서의 여자 남자 크기
# 아래 코드에서 income의 이상치 처리 완료 후
welfare_income <- welfare %>%
  filter(!is.na(income))

# table(welfare$sex)
table(welfare_income$sex)
qplot(welfare_income$sex)

# 2. 월급 변수 검토 및 전처리
class(welfare$income)
summary(welfare$income)

qplot(welfare$income) + xlim(0, 1000)

# 정상범위: 1~9998. 이상치 처리
welfare$income <- ifelse(welfare$income %in% c(0, 9999),
                         NA, welfare$income)
table(is.na(welfare$income))

sex_income <- welfare %>%
  filter(!is.na(income)) %>% 
  group_by(sex) %>% 
  summarise(mean_income = mean(income))

# mean_income = sprintf("%.5f", mean(income)): 소수점 표현

sex_income

ggplot(data = sex_income, aes(x = sex, y = mean_income)) +
  geom_col(fill = c("blue", "red"))

# ggplot(data = welfare, aes(x = sex, y = income, color = sex)) + geom_boxplot()

# 소수점
options(digits = 7)
pi