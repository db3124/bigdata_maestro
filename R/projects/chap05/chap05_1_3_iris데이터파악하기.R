# iris 데이터 파악하기
help(iris)

my_iris <- as.data.frame(iris)

head(my_iris)
head(my_iris, 10)

tail(my_iris)
tail(my_iris, 10)

View(head(my_iris, 10))
View(tail(my_iris, 10))

dim(my_iris)

str(my_iris)

summary(my_iris)

# 컬럼별 평균
mean(my_iris$Sepal.Length)
mean(my_iris$Sepal.Width)
