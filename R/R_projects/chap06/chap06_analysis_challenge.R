# ggplot2 패키지에는 미국 동부중부 437개 지역의 인구통계 정보를 담은 midwest라는 데이터가 있음
# 1. popadults는 해당 지역의 성인 인구, poptotal은 전체 인구. midwest 셋에 '전체 인구 대비 미성년 인구 백분율' 변수 추가
midwest_new <- as.data.frame(ggplot2::midwest)

midwest_new2 <- midwest_new %>% mutate(minor_prop = ((poptotal - popadults) / poptotal) * 100)

# 2. 미성년 인구 백분율이 가장 높은 상위 5개 country
midwest_new2 %>%
  arrange(desc(minor_prop)) %>% 
  head(5)

# 3. 분류표의 기준에 따라 미성년 비율 등급 변수 추가, 각 등급에 몇 개의 지역이 있는지?
# 분류표 large: 40%이상, middle: 30%이상 40%미만, small: 30%미만
midwest_new3 <- midwest_new2 %>%
  mutate(minor_grade = ifelse(minor_prop >= 40, "large",
                       ifelse(minor_prop >= 30, "middle", "small")))

midwest_new3 %>%
  group_by(minor_grade) %>%
  summarise(n = n())

# 4. popasian은 해당 지역의 아시아인 인구. '전체 인구 대비 아시아인 인구 백분율' 변수 추가. 하위 10개 지역의 state, county, 아시아인 인구 백분율 출력
midwest_new4 <- midwest_new %>% mutate(asian_prop = (popasian / poptotal) * 100)
midwest_new4 %>%
  select(state, county, asian_prop) %>% 
  arrange(asian_prop) %>% 
  head(10)

# View(head(midwest, 30))




