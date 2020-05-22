정치적 성향 wc14_5aq6
한달 월급 p1402_8aq1

household_new <- rename(household,
                     "pol_tendency" = wc14_5aq6,
                     "income" = p1402_8aq1)

household_new <- household_new %>% 
  select("pol_tendency", "income")

View(household_new)


# 정치적 성향
household_new$pol_tendency <- ifelse(household$pol_tendency == 9,
                               NA, household$pol_tendency)
table(household$pol_tendency)
table(is.na(household_new$pol_tendency))

# 월급
household_new$income <- ifelse(household_new$income == 9999,
                               NA, household_new$income)
table(is.na(household_new$pol_tendency))


na <- household_new %>% 
  filter(!is.na(pol_tendency) & !is.na(income))

dim(na)

ggplot(data = na, aes(x = ))