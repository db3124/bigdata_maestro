# 데이터 프레임을 이용한 여러 값 표현
eco2 <- data.frame(psavert = my_economics$psavert,
                   unemploy = my_economics$unemploy/1000)

time_eco2 <- xts(eco2, order.by = my_economics$date)

dygraph(time_eco2) %>% 
  dyRangeSelector()
