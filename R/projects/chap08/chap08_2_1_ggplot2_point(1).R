# ggplot2로 산점도 그리기
library(ggplot2)

# 산점도: 두 변수 모두 연속적인 값을 대상으로 그림. 상관관계 있는 경우 적합
# 1. 배경 설정하기
ggplot(data = mpg, aes(x = displ, y = hwy))

# 2. 배경에 산점도 추가하기
ggplot(data = mpg, aes(x = displ, y = hwy)) + geom_point()

ggplot(data = mpg, aes(x = cty, y = hwy)) + geom_point()
?geom_point


# 3. 축 범위 조정
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlim(3, 6)

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point() +
  xlim(3, 6) +
  ylim(10, 30)

# 파라미터, 함수 적용
# 칼라: Rcolor red, RGB "#888800", 벡터 c(1:234)
ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(size = 3, color = "blue") +
  xlim(3, 6) +
  ylim(10, 30) +
  theme(text = element_text(size = 20)) +
  ggtitle("Highway & Displacement") +
  xlab("Displacement") +
  ylab("Highway")
  
# ggplot2 테마 지정하는 패키지
install.packages("ggthemes")
library(ggthemes)

ggplot(data = mpg, aes(x = displ, y = hwy)) +
  geom_point(size = 3, color = "red") +
  xlim(3, 6) +
  ylim(10, 30) +
  theme_economist() +
  scale_color_economist() +
  ggtitle("Highway & Displacement") +
  xlab("Displacement") +
  ylab("Highway")


