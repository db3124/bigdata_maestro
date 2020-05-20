# 월급을 받는 사람들 대상으로 남성, 여성 직업 빈도
welfare$income <- ifelse(welfare$income %in% c(0, 9999),
                         NA, welfare$income)

welfare_income <- welfare %>%
  filter(!is.na(income))

# 남성
job_male <- welfare_income %>% 
  filter(!is.na(job) & sex == "male") %>% 
  group_by(job) %>%
  summarise(n = n(), mean_income = mean(income)) %>% 
  arrange(desc(n)) %>% 
  head(10)

job_male

ggplot(data = job_male, aes(x = reorder(job, n), y = mean_income)) +
  geom_col() +
  coord_flip()

# 여성
job_female <- welfare_income %>% 
  filter(!is.na(job) & sex == "female") %>% 
  group_by(job) %>%
  summarise(n = n(), mean_income = mean(income)) %>% 
  arrange(desc(n)) %>% 
  head(10)

ggplot(data = job_female, aes(x = reorder(job, n), y = mean_income)) +
  geom_col() +
  coord_flip()
