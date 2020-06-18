# mpg데이터 분석
# Q1 "audi"에서 생상한 자동차 중 어떤 자동차 모델의 hwy가 높은지? "audi"가 생산한 자동차 중 hwy 1~5위
my_mpg <- mpg
my_mpg %>%
  filter(manufacturer == "audi") %>%
  arrange(desc(hwy)) %>%
  head(5)
