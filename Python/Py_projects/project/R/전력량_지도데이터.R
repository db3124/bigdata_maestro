# 라이브러리 설치
install.packages('stringi')
install.packages('devtools')
devtools::install_github('cardiomoon/kormaps2014')
install.packages('mapproj')
install.packages('ggiraphExtra')
install.packages('ggthemes')

# 라이브러리 로드
library(kormaps2014)
library(dplyr)
library(ggplot2)
library(readxl)
library(mapproj)
library('ggiraphExtra')
library(ggthemes)

# 지도 만들기
str(changeCode(korpop2))

df_kormap2 <- kormaps2014::kormap2

df_kormap2$id <- as.double(df_kormap2$id)

df_kormap2 <- df_kormap2[df_kormap2$id < 25,]

df_kormap2$name <- iconv(df_kormap2$name, "UTF-8", "EUC-KR")

# 지도를 그리기 위한 파일 불러오기
# 위도 및 경도, 구별 전력량 
df_sec <- read_excel("./res/위도_경도_코드.xlsx")
elec <- read_excel('./res/세대밀도_전력량_가정용.xlsx')

# 위도, 경도 코드 변수명 인코딩 방식 바꾸기
df_sec$name <- iconv(df_sec$name, "UTF-8", "EUC-KR")

# 데이터프레임 합치기
elec <- elec %>%
  select(name, total)

df_sec2 <- left_join(df_sec, elec, by = 'name')

map <- ggChoropleth(data = df_sec2,
                    aes(fill = total,
                        map_id = code,
                        tooltip = name),
                    map = df_kormap2,
                    palette = 'GnBu',
                    color = 'black',
                    interactive = F)

map <- map +
  theme_void()+
  labs(fill="전력 사용량")+
  theme(legend.title=element_text(size=20, face = "bold"))+
  theme(legend.text=element_text(size=20, face = "bold"))

map
