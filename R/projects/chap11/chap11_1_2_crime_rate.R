# 패키지 로드
library(ggiraphExtra)

# 1. 미국 주별 범죄 데이터 준비하기: R에 내장되어있는 데이터셋
str(USArrests)

# 2. 행이름rowname이 지역명으로 되어 있음
head(USArrests)

# 3. tibble 패키지의 rownames_to_column()
# library(tibble): dplyr 설치하면 자동 함께 설치됨.
crime <- rownames_to_column(USArrests, var = "state")

# 지도 데이터의 지역명 변수는 모두 소문자이므로, 소문자로 수정
crime$state <- tolower(crime$state) # toupper()

head(crime)

str(crime)

# 4. 미국 주 지도 데이터 준비
library(maps)
library(ggplot2)

# 데이터 프레임 형태로 불러오기
# map_data(): ggplot2의 함수. "state"는 ggplot2 패키지 안에 있는 것.
states_map <- map_data("state") 

View(states_map)
str(states_map)

# 5. 단계 구분도 만들기
# ggiraphExtra 패키지의 ggChropleth()함수
ggChoropleth(data = crime,
             aes(fill = Murder, map_id = state),
             map = states_map)

# 6. 인터랙티브 단계 구분도
ggChoropleth(data = crime,
             aes(fill = Murder, map_id = state, ),
             map = states_map,
             interactive = T)

