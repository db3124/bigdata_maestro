ggplot(data = job_income, aes(x = job, y = mean_income, fill = sex)) +
  coord_flip()
