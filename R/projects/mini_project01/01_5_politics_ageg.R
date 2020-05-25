# 정치적 성향별 연령대표 만들기
politics_ageg <- household_politics %>% 
  group_by(politics, ageg) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n / tot_group * 100, 2))

politics_ageg

politics_ageg$ageg <- factor(politics_ageg$ageg,
                             level = c("twenties", "thirties", "forties",
                                       "fifties", "the older"))

# 그래프 그리기
ggplot(data = politics_ageg, aes(x = politics, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip()

