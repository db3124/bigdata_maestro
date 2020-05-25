# 연령대별 임금
ageg_income <- household_politics %>%
  group_by(ageg) %>% 
  summarise(mean_income = mean(income))

ageg_income

# 그래프 그리기
ggplot(data = ageg_income, aes(x = ageg, y = mean_income)) +
  geom_col(fill = fill_color) +
  scale_x_discrete(limits = limits_ageg)

fill_color <- c("#a3a500", "#00bf7d", "#f8766d", "#00b0f6","#e76bf3")
limits_ageg <- c("twenties", "thirties", "forties", "fifties", "the older")

