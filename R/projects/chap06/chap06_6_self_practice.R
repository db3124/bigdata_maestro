# mpg
# Q1 class(차종) 별 cty(도시 연비)
mpg %>% 
  group_by(class) %>% 
  summarise(mean_cty = mean(cty))

# Q2 Q1의 cty 높은 순서로
mpg %>% 
  group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  arrange(desc(mean_cty))

# Q3 회사별 hwy 평균. 상위 3개 출력
mpg %>% 
  group_by(manufacturer) %>%
  summarise(mean_hwy = mean(hwy)) %>% 
  arrange(desc(mean_hwy)) %>% 
  head(3)

# Q4 회사별 경차(compact) 수
mpg %>% 
  filter(class == "compact") %>% 
  group_by(manufacturer) %>% 
  summarise(compact_n = n()) %>% 
  arrange(desc(compact_n))
