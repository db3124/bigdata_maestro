# 1. 변수 검토 및 전처리: 직업, 성별
# 2. 변수 간 관계 분석
# 2-1. 성벽 직업 빈도표 만들기
# 성별 직업 빈도 분석하기
# 남성
welfare <- left_join(welfare, list_job, id = "code_job")
View(welfare)
job_male <- welfare %>% 
  filter(!is.na(job) & sex == "male") %>% 
  group_by(job) %>%
  summarise(n = n()) %>% 
  arrange(desc(n)) %>% 
  head(10)

job_male

# 여성
job_female <- welfare %>% 
  filter(!is.na(job) & sex == "female") %>% 
  group_by(job) %>%
  summarise(n = n()) %>% 
  arrange(desc(n)) %>% 
  head(10)

job_female

# 2-2. 그래프 만들기
# 남성
ggplot(data = job_male, aes(x = reorder(job, n), y = n)) +
  geom_col() +
  coord_flip()

# 여성
ggplot(data = job_female, aes(x = reorder(job, n), y = n)) +
  geom_col() +
  coord_flip()
