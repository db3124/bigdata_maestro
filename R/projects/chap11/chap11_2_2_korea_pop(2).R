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
# 패키지명 쓰기~!
str(changeCode(kormaps2014::korpop1))
# kormaps2014::korpop1, changeCode는 kormaps2014에 있는 함수.


# 한글 문제 해결1===================================
library(dplyr)

korpop1 <- rename(kormaps2014::korpop1,
                  pop = 총인구_명,
                  name = 행정구역별_읍면동)

my_korpop1 <- changeCode(kormaps2014::korpop1,
                         from = "UTF-8",
                         to = "EUC-KR")

korpop1$name <- my_korpop1$name

rm(my_korpop1)

View(korpop1)
# ==================================================

# 한글 문제 해결2===================================
korpop1 <- kormaps2014::korpop1

View(korpop1)

korpop1 <- rename(kormaps2014::korpop1,
                  pop = 총인구_명,
                  name = 행정구역별_읍면동)

# changeCode: 데이터프레임, iconv: 벡터의 인코딩을 바꿈
korpop1$name <- iconv(korpop1$name, "UTF-8", "CP949")

# ==================================================

# 4. 대한민국 시도 지도 데이터 준비
str(changeCode(kormaps2014::kormap1))

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
