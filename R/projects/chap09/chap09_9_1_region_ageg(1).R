# 지역별 연령대 비율
# 1. 변수 검토 및 전처리
# 1-1. 지역
# 검토
class(welfare$code_region)
table(welfare$code_region)

# 전처리
list_region <- data.frame(code_region = c(1:7),
                          region = c("서울", "수도권(인천/경기)", "부산/경남/울산",
                                     "대구/경북", "대전/충남", "강원/충북",
                                     "광주/전남/전북/제주도"))

list_region

welfare_region <- welfare %>% 
  select(c(code_region, ageg)) %>% 
  inner_join(list_region, by = "code_region")

View(welfare_region)
table(is.na(welfare_region$code_region))
table(is.na(welfare_region$region))
# 1-2. 연령대

# 2. 변수 간 관계 분석
# 2-1. 지역별 연령대 비율표 만들기
region_ageg <- welfare_region %>%
  group_by(region, ageg) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n / tot_group * 100, 2))

region_ageg 

# 2-2. 그래프 만들기
#지역별 인구
ggplot(data = region_ageg, aes(x = reorder(region, n), y = n))+
  geom_col() +
  coord_flip()

# 지역별 연령대별 그래프
ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip()

