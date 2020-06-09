library(foreign)
library(dplyr)

# 파일 불러오기
raw_data <- read.spss("koweps_hpwc14_2019_beta1.sav",
                        reencode = T,
                        to.data.frame = T)

# 데이터 복사본 만들기
my_data <- raw_data

# 데이터 확인
raw_data %>%
  head %>% 
  View
  
# 변수명 바꾸기
my_data <-  rename(my_data,
                   age = h14_g4,
                   edu = p1407_3aq1,
                   income_reg = h14_pers_income1,
                   income_temp = h14_pers_income2,
                   income_emp = h14_pers_income3,
                   income_sec = h14_pers_income4,
                   income_agri = h14_pers_income5)

# 태어난 연도 -> 나이로 바꾸기
my_data$age <- 2019 - my_data$age + 1

# 연령대 변수 만들기
my_data <- my_data %>%
  mutate(ageg = ifelse(age >= 50, "고령자층", "그외"))

# 최종학력 변수값 데이터프레임 생성
edu_group <- data.frame(edu = c(1:5),
                        edu_categ = c("중학교 졸업 이하", "고등학교 중퇴, 졸업",
                                      "전문대학 재학, 중퇴, 졸업", 
                                      "대학교(4년제) 재학, 중퇴, 졸업", "대학원 이상"))

# 최종학력 join
my_data <- my_data %>% 
  left_join(edu_group, by = "edu")

# 모든 소득을 합친 하나의 변수 만들기
my_data$income_tot <- sum(my_data$income_reg + my_data$income_temp +
                            my_data$income_emp + my_data$income_sec +
                            my_data$income_agri, na.rm = T)

my_data <- my_data

# 필요한 변수만 골라 새로운 데이터 프레임 생성
fin_data <- my_data %>% 
  select(age, ageg, edu, edu_categ,
         income_tot,
         income_reg, income_temp, income_emp, income_sec, income_agri)

fin_data %>%
  View

# 연령대 - 학력
ageg_edu <- fin_data %>%
  filter(!is.na(ageg) & ! is.na(edu_categ)) %>% 
  select(ageg, edu_categ) %>% 
  group_by(ageg, edu_categ) %>% 
  summarise(cnt = n()) %>% 
  mutate(tot = sum(cnt))

# 연령대 - 소득
summary()

