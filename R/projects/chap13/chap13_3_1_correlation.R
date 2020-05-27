# 상관분석: 상관계수 -1(반비례) ~ 0 ~ 1(비례)
# 실업자 수와 개인 소비 지출의 상관관계
my_eco <- as.data.frame(ggplot2::economics)

cor.test(my_eco$unemploy, my_eco$pce)

# 상관행렬 히트맵 만들기
# 복사본 만들기 r에 내장된 mtcars 데이터셋
my_mtcars <- mtcars

head(my_mtcars)

# 상관행렬 생성
car_cor <- cor(my_mtcars)

head(car_cor)

round(car_cor, 2)

# corrplot 패키지 이용 히트맵 만들기
# 라이브러리 로드
library(corrplot)

corrplot(car_cor)

corrplot(car_cor, method = "number")

# 다양한 파라미터 지정
col <- colorRampPalette(c("#BB4444", "#EE9988",
                          "#FFFFFF", "#77AADD", "#4477AA"))

corrplot(car_cor,
         method = "color", # 색으로 표현
         col = col(200), # 색상 200개 선정
         type = "lower", # 왼쪽 아래 행렬만 표시
         order = "hclust", # 유사한 상관계수끼리 군집화
         addCoef.col = "black", # 상관계수 색깔
         tl.col = "black", # 변수명 색깔
         tl.srt = 45, # 변수명 45도 기울임
         diag = F) # 대각 행렬 제외
