# 다양한 파라미터와 함수로 그래프 만들어보기 연습
# https://ggplot2.tidyverse.org/
# https://r4ds.had.co.nz/data-visualisation.html
?ggplot2

# ggplot 파라미터 적용
ggplot(data = mpg, aes(x = displ, y = hwy, color = class)) +
  geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy, size = class)) +
  geom_point()

ggplot(data = mpg, aes(x = displ, y = hwy, shape = class)) +
  geom_point()

# facet_wrap()
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)