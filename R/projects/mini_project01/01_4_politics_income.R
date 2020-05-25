# 정치적 성향별 평균 임금표 만들기 
politics_income <- household_politics %>% 
  select(politics, income) %>% 
  group_by(politics) %>% 
  summarise(mean_income = mean(income))

politics_income

# 그래프 그리기
ggplot(data = politics_income, aes(x = politics, y = mean_income)) +
  geom_col(fill = c("blue", "cornflowerblue", "darkgray", "brown1", "red"))
