# 대한민국 시도별 인구 단계 구분도 만들기
# 1. 패키지 준비
# stringi: kormaps2014 패키지를 이용하는 데 필요한 패키지
install.packages("stringi")

install.packages("devtools")

# 각 지역별 행정지도 정보
# CRAN에 등록X, 깃허브를 통해 공유함.
devtools::install_github("cardiomoon/kormaps2014")

library(kormaps2014)

# 2. 대한민국 시도별 인구 데이터 준비하기
# UTF-8 -> EUC-KR, CP949(MSWin949). 단, 숫자까지도 문자열로 바뀜!!!
str(changeCode(korpop1))
# kormaps2014::korpop1

# 3. 변수명 수정: 한글 -> 영문
library(dplyr)
korpop1 <- rename(korpop1,
                  pop = 총인구_명,
                  name = 행정구역별_읍면동)

# name 변수의 지역명이 깨지지 않도록 CP949로 인코딩
korpop1$name <- iconv(korpop1$name, "UTF-8", "CP949")

View(korpop1)

# 4. 대한민국 시도 지도 데이터 준비
str(changeCode(kormap1))

View(kormap1)

# 5. 단계 구분도 만들기
library(ggiraphExtra)
library(ggplot2)

ggChoropleth(data = korpop1,
             aes(fill = pop, # 색깔로 표현할 변수
                  map_id = code, # 지역 기준 변수
                  tooltip = name # 지도 위에 표시할 지역명
                 ),
             map = kormap1, # 지도 데이터
             interactive = T)
