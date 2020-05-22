#패키지 불러오기
library(ggplot2)
library(dplyr)
library(readxl)
library(foreign)
library(haven)

#전처리
raw_household<- read.spss(file = "Koweps_hpwc14_2019_beta1.sav",
                          to.data.frame = T, reencode = T)

household <- raw_household

household <- rename(household,
                    education = p1407_3aq1,
                    life_ladder = p1405_12aq1,
                    income = p1402_8aq1,
                    politics = wc14_5aq6,
                    sex = h14_g3,
                    birth = h14_g4,
                    code_region = h14_reg7
)


household$age <- 2019 - household$birth + 1

household$ageg <- ifelse(household$age < 30, "twenties",
                         ifelse(household$age < 40, "thirties",
                                ifelse(household$age < 50, "forties",
                                       ifelse(household$age < 60, "fifties", "the older"))))


household_politics <- household %>% 
  select(education, life_ladder, income, politics, sex, age, ageg, code_region)

household_politics$politics <- ifelse(household_politics$politics %in% c(6,9), NA, household_politics$politics)
View(household_politics)

#NA값 지우기
household_politics <- household_politics %>% 
  filter(!is.na(income) & !is.na(politics) & !is.na(code_region))



#정치적 성향 별 평균 임금
politics_income <- household_politics %>% 
  group_by(politics) %>% 
  summarise(mean_income = mean(income))


ggplot(data = politics_income, aes(x = politics, y = mean_income)) + geom_col(fill = c("blue", "cornflowerblue", "darkgray", "brown1", "red"))




#연령대별 정치적 성향 비율
politics_ageg <- household_politics %>% 
  group_by(politics, ageg) %>% 
  summarise(mean_income = mean(income), n = n()) %>%
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n/tot_group*100, 2))

politics_ageg$ageg <- factor(politics_ageg$ageg,
                               level = c("the older", "fifties", "forties", "thirties","twenties"))


ggplot(data = politics_ageg, aes(x = politics, y = pct, fill = ageg)) + geom_col() + coord_flip()






#연령대 별 평균 임금
income_ageg <- household_politics %>% 
  group_by(ageg) %>% 
  summarise(mean_income = mean(income))

income_ageg$ageg <- factor(income_ageg$ageg,
                           level = c("twenties", "thirties", "forties", "fifties", "the older"))

ggplot(data = income_ageg, aes(x = ageg, y = mean_income)) + geom_col(fill = c("#a3a500", "#00bf7d", "#f8766d", "#00b0f6","#e76bf3"))





# 지역별 정치성향
list_region <- data.frame(code_region = c(1, 2, 3, 4, 5, 6, 7),
                          region = c("서울", "수도권(인천/경기)", "부산/경남/울산",
                                     "대구/경북", "대전/충남", "강원/충북",
                                     "광주/전남/전북/제주도"))

list_region

table(household_politics$code_region)
class(household_politics$code_region)
class(list_region$code_region)

politics_region <- left_join(household_politics, list_region, by = "code_region")

View(politics_region)

politics_region <- politics_region %>% 
  group_by(region, politics) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n / tot_group *100, 2))

politics_region

ggplot(data = politics_region, aes(x = region, y = pct, fill =  politics)) +
  geom_col() +
  coord_flip()
