# 패키지 설치 및 로드
install.packages("ggplot2")
library(ggplot2)

x <- c("a", "a", "b", "c")
x

# 빈도 막대 그래프 출력 (단순한 함수)
qplot(x)

# 파라미터 설정을 바꿔가며 그래프 그리기
qplot(data = mpg, x = hwy)

qplot(data = mpg, x = cty)

qplot(data = mpg, x = drv, y = hwy)

# geom: 그래프 지정
qplot(data = mpg, x = drv, y = hwy, geom = "line")

qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")

qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)

data(mpg)
mpg

# 패키지 정보
?ggplot2
help(qplot)