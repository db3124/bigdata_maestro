# 변수
# 일한달의 월 평균 임금 p1402_8aq1
# 자신의 정치적 성향 wc14_5aq6	
# 태어난 연도	h14_g4
# 7개 권역별 지역구분 h14_reg7

household <- rename(household,
                    income = p1402_8aq1,
                    politics = wc14_5aq6,
                    birth = h14_g4) %>% 
  select(income, politics, birth)

View(household)
