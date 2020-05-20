# income의 NA 처리
welfare$income <- ifelse(welfare$income %in% c(0, 9999),
                         NA, welfare$income)

welfare_income <- welfare %>%
  filter(!is.na(income))

# 1. 연령대 변수 검토 및 전처리하기
# 연령대 파생변수 만들기
welfare_income$age <- 2015 - welfare_income$birth + 1
welfare_income <- welfare_income %>%
  mutate(ageg = ifelse(age < 30, "twenties",
                       ifelse(age < 40, "thirties",
                              ifelse(age < 50, "forties",
                                     ifelse(age < 60, "fifties", "the older")))))

table(welfare_income$ageg)            

qplot(welfare_income$ageg)

# 2. 연령대에 따른 월급 차이 분석하기
ageg_income <- welfare_income %>% 
  group_by(ageg) %>% 
  summarise(mean_income = mean(income))

ageg_income

ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) +
  geom_col(fill = c(1:5)) +
  scale_x_discrete(limits = c("twenties", "thirties",
                              "forties", "fifties", "the older"))
