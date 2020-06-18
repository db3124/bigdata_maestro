# mpg데이터와 midwest 데이터 분석
# Q1
ggplot(data = mpg, aes(x = cty, y = hwy)) + geom_point()

# Q2
min(midwest$poptotal)
min(midwest$popasian)

ggplot(data = midwest, aes(x = poptotal, y = popasian)) +
  geom_point() +
  xlim(1701, 500000) +
  ylim(0, 10000)