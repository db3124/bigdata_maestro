# income: 모름/무응답=9999
class(household$income)
table(household$income)
summary(household$income)

household$income <- ifelse(household$income == 9999, NA, household$income)

# politics: 모름/무응답=9, 6. 선택할 수 없음
class(household$politics)
table(household$politics)
 
household$politics <- ifelse(household$politics %in% c(6, 9), NA, household$politics)

# birth: 모름/무응답=9999, 년
class(household$birth)
table(household$birth)
summary(household$birth)

household$age <- 2019 - household$birth + 1

summary(household$age)

# 유권자 나이를 기준으로 만 19세 이하 NA 처리
household$age <- ifelse(household$age < 20, NA, household$age)

household$ageg <- ifelse(household$age < 30, "twenties",
                         ifelse(household$age < 40, "thirties",
                                ifelse(household$age < 50, "forties",
                                       ifelse(household$age < 60, "fifties", "the older"))))

View(household)

#
household_politics <- household %>% 
  filter(!is.na(income) & !is.na(politics) & !is.na(ageg))

View(household_politics)
