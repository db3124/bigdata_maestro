library(ggplot2)
library(dplyr)

# 연령, 연령대 변수 만들기
welfare$age <- 2015 - welfare$birth + 1
welfare <- welfare %>%
  mutate(ageg = ifelse(age < 30, "twenties",
                       ifelse(age < 40, "thirties",
                              ifelse(age < 50, "forties",
                                     ifelse(age < 60, "fifties", "the older")))))

View(welfare)

# 1. 연령대별 이혼율 표 만들기
ageg_marriage <- welfare %>% 
  filter(!is.na(group_marriage)) %>% 
  group_by(ageg, group_marriage) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round((n/tot_group)*100, 1))

ageg_marriage

# 2. 연령대별 이혼율 그래프 만들기
ageg_divorce <- ageg_marriage %>%
  filter(group_marriage == "divorce")
  select(ageg, group_marriage, pct)

ageg_divorce

ggplot(data = ageg_divorce, aes(x = ageg, y = pct)) +
  geom_col() +
  scale_x_discrete(limits = c("twenties", "thirties",
                              "forties", "fifties", "the older"))

# 3. 연령대 및 종교 유무에 따른 이혼율 표 만들기
# 연령대, 종교유무, 결혼 상태별 비율표 만들기
ageg_religion_marriage <- welfare %>%
  filter(!is.na(group_marriage)) %>% 
  group_by(ageg, religion, group_marriage) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round((n/tot_group)*100, 1))

ageg_religion_marriage

# 연령대 및 종교 유무별 이혼율 표 만들기
df_divorce <- ageg_religion_marriage %>% 
  filter(group_marriage == "divorce") %>% 
  select(ageg, religion, group_marriage, pct)

df_divorce

# 4. 연령대 및 종교 유무에 따른 이혼율 그래프 만들기
ggplot(data = df_divorce, aes(x = ageg, y = pct, fill = religion)) +
  geom_col(position = "dodge") +
  scale_x_discrete(limits = c("twenties", "thirties",
                              "forties", "fifties", "the older"))
