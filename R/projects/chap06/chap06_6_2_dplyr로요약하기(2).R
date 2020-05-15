# 회사별 "suv" 자동차의 도시 및 고속도로 통합 연비 평균을 구해 내림차순으로 정렬, 1~5위 출력
View(mpg)
mpg %>%
  group_by(manufacturer) %>%
  filter(class == "suv") %>%
  mutate(tot = (cty + hwy) / 2) %>%
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)

# group_by를 먼저 쓰는 것은 바보짓이다
# filter를 무조건 먼저!!!
# group_by 다음은  summaries를 붙여서 씀
# 필터 - 속성 - 그룹 - 요약 - 정렬
# 요약은 그룹을 상대로 하는 것. 전체 행이 대상이 아니다.
mpg %>%
  filter(class == "suv") %>% 
  mutate(tot = (cty + hwy) / 2) %>% 
  group_by(manufacturer) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% 
  head(5)
