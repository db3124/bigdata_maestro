# 빈도 막대 그래프 그리기
# geom_bar(): x축 속성만 있고, y축은 x축 속성의 크기를 나타낼 때
ggplot(data = mpg, aes(x = drv)) + geom_bar()
ggplot(data = mpg, aes(x = class)) + geom_bar()

# hwy는 연속적인 값이기 때문에 막대그래프로 그리는 의미 없음
# 막대보다 histogram이 더 나은 방법
ggplot(data = mpg, aes(x = hwy)) + geom_bar()
