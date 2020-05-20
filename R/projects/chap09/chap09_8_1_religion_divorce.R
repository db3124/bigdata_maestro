# 종교 유무에 따른 이혼율
# 결혼 경험이 있는 사람들 중에서 따지는 것이 맞는...?
# 1. 변수 검토 및 전처리: 종교, 혼인 상태
# 종교 변수 검토
class(welfare$religion)
table(welfare$religion)

# 종교 변수 전처리
welfare$religion <- ifelse(welfare$religion == 1, "yes", "no")
table(welfare$religion)
qplot(welfare$religion)

# 결혼 경험 변수 검토
head(welfare)
class(welfare$marriage)
table(welfare$marriage)

# 결혼 경험 변수 전처리
welfare$group_marriage <- ifelse(welfare$marriage == 1, "marriage",
                           ifelse(welfare$marriage  == 3, "divorce", NA))

head(welfare)
table(welfare$group_marriage)
qplot(welfare$group_marriage)

# 2. 변수 간 관계 분석
# 2-1. 종교 유무에 따른 이혼율 표 만들기
religion_marriage <- welfare %>%
  filter(!is.na(group_marriage)) %>% 
  group_by(religion, group_marriage) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round((n / tot_group) * 100, 1))

religion_marriage

divorce <- religion_marriage %>% 
  filter(group_marriage == "divorce") %>% 
  select(religion, pct)

divorce

# 2-2. 그래프 만들기
ggplot(data = divorce, aes(x = religion, y = pct)) +
  geom_col()

# 
religion_marriage <- welfare %>%
  filter(!is.na(group_marriage)) %>% 
  group_by(religion, marriage) %>% 
  summarise(n = n())
# 위 아래 결과는 같다. 하지만 위 코드는 summarise가 끝나고 그룹이 계속 유지가 되고,
# 아래는 하나의 dataframe으로 끝난 상태
welfare %>% 
  filteR(!is.na(group_marriage)) %>% 
  count(religion, group_marriage) %>% 
  # 따라서 아래에 group_by()를 해줘야 한다.
  group_by(religion) %>% 
  mutate(pct = round((n / tot_group) * 100, 1))
  # 하지만 꼼수다!!!
  # summarise()를 안 쓴 이유: summarise를 쓰면 religion 바로 옆 열에 붙고,
  # mutate()를 쓰면 마지막 열에 생성됨
  # 또한 tot_group을 나타낼 수 있는 방법이 없다.
