# 1. 패키지 로드
library(readxl)
library(ggplot2)
library(dplyr)

library(mapproj)
library(ggiraphExtra)

library(stringi)
library(devtools)
devtools::install_github("cardiomoon/kormaps2014")
library(kormaps2014)

# 2. 엑셀 파일 불러오기
# 서울시 5개구 고령층인구
<<<<<<< HEAD
alone <- read_excel("./res/서울시독거노인현황구별전체.xlsx")

View(alone)

alone <- data.frame(alone)
=======
old <- read_excel("./res/서울시 독거노인 현황 구별 전체.xlsx")

View(old)

old <- data.frame(old)
>>>>>>> 2c18c65d150caa7b0cdce5df6ac5d52631781f20

# 3. 한국 시도 지도 데이터 준비
# kormaps2014 패키지 중 kormap2(2014년 한국 행정지도(시군구별))
View(kormap2)

# 4. 지도 인터렉티브 시각화
<<<<<<< HEAD
ggChoropleth(data = alone,
             aes(fill = 독거노인현황,
                 map_id = code_id,
=======
ggChoropleth(data = old,
             aes(fill = 독거노인현황,
                 map_id = code,
>>>>>>> 2c18c65d150caa7b0cdce5df6ac5d52631781f20
                 tooltip = 자치구),
             map = kormap2,
             interactive = T)
