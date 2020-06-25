# 다양한 interactive graph 제공: https://rstudio.github.io/dygraphs/
# 패키지 로드
library(dygraph)

# 데이터 불러오기 
my_economics <- ggplot2::economics

head(my_economics)

# dygraphs의 시계열 그래프를 만드려면
# 데이터가 시간 순서 속성을 지닌 xts 타입이어야 함.
library(xts) # 내장 패키지

eco <- xts(my_economics$unemploy,
           order.by = my_economics$date)

head(eco)

# 인터렉티브 시계열 그래프 만들기
dygraph(eco)

dygraph(eco) %>% dyRangeSelector()

# 여러 값 표현하기
# 저축률 xts타입으로
eco_psavert <- xts(my_economics$psavert,
                   order.by = my_economics$date)

# 실업자수 xts타입으로
eco_unemploy <-xts(my_economics$unemploy/1000,
                   order.by = my_economics$date)

# 두 개의 xts타입을 하나로
eco2 <- cbind(eco_psavert, eco_unemploy)

# date는 row의 name이기 때문에 2번 나오지 않음
head(eco2)

# 속성명 지정
?colnames()
colnames(eco2) <- c("psavert", "unemploy")

# 인터렉티브 그래프 그리기
dygraph(eco2) %>% 
  dyRangeSelector()
