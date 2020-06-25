job_top10 <- job_income %>% 
  arrange(desc(mean_income)) %>% 
  head(10)

View(job_top10)

rm(job_income2)

job_income2 <- welfare_income %>% 
  group_by(job, sex)

View(job_income2)

job_income2 <- inner_join(job_income2, job_top10, by = "job")
View(job_income2)

job_sex_top <- job_income2 %>% 
  filter(!is.na(mean_income)) %>% 
  group_by(job) %>% 
  mutate(n = n()) %>% 
  arrange(mean_income)

View(job_sex_top)

ggplot(data = job_sex_top, aes(x = job, y = mean_income, fill = sex)) +
  geom_col() +
  coord_flip()
