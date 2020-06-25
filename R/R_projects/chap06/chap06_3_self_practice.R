# mpg 데이터 분석
# Q1  mpg 데이터는 11개 변수가 있음. 일부만 추출해서 분석. class, cty 변수 추출해 새로운 데이터 생성. 새로만든 데이터 일부 추출
mpg_cty <- mpg %>% select(class, cty)

mpg_cty %>% head
head(mpg_cty)

# Q2 Q1에서 추출한 데이터에서 class가 "suv"인 자동차와 "compact"인 자동차 중 어떤 자동차의 cty가 더 높은지?
mpg_suv <- mpg_cty %>% filter(class == "suv")
mean(mpg_suv$cty)

mpg_compact <- mpg_cty %>% filter(class == "compact")
mean(mpg_compact$cty)
