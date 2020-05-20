# 직업, 월급, 성별 그래프
# 이미 join한 welfare_income을 가져온다.
job_income <- welfare_income %>% 
  filter(!is.na(job) & !is.na(income)) %>% 
  group_by(job, sex) %>%
  # group_vars(): job, sex
  summarise(mean_income = mean(income)) %>%
  # group_vars(): job(상위그룹): job별 income의 합=total
  # summarise를 만나면 하위그룹이 풀리고 상위그룹만 남는다.
  mutate(total = sum(mean_income))

View(job_income)

# summarise에 sum(income)으로도 해볼 것것

# 상위 20위 추출
top <- job_income %>% 
  arrange(desc(total), desc(sex)) %>%
  head(20)

top

# total이 job 정렬의 기준이 됨
ggplot(data = top, aes(x = reorder(job, total),
                       y = mean_income, fill = sex)) +
  geom_col() +
  coord_flip()

# 하위 20위 추출
bottom <- job_income %>% 
  arrange(desc(total), desc(sex)) %>%
  tail(20)

bottom

ggplot(data = bottom, aes(x = reorder(job, total),
                          y = mean_income, fill = sex)) +
  geom_col() +
  coord_flip()

