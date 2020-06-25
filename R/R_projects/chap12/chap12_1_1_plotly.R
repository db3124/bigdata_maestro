# interactive graph
# 라이브러리 로드
library(ggplot2)
library(plotly)

# ggplot2로 그래프 만들기
# 산점도
my_mpg <- ggplot2::mpg

p <- ggplot(data = my_mpg,
            aes(x = displ, y = hwy, col = drv)) +
  geom_point()

ggplotly(p)

# 막대그래프
View(head(ggplot2::diamonds))

my_diamonds <- ggplot2::diamonds

p2 <- ggplot(data = my_diamonds,
             aes(x = cut, fill = clarity)) +
  geom_bar(position = "dodge")

ggplotly(p2)
