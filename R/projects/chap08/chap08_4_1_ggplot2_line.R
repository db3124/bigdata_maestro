# 시계열 그래프 만들기
?economics
head(economics)
tail(economics)
str(economics)
dim(economics)
summary(economics)

ggplot(data = economics, aes(x = date, y = unemploy)) + geom_line()
