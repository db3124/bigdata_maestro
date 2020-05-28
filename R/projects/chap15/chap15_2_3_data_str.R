# 벡터
a <- 1
a
class(a)

b <- "Hello"
b
class(b)

# 데이터 프레임
x1 <- data.frame(var1 = c(1:3),
                 var2 = c("a", "b", "c"))
x1
class(x1)

# 매트릭스 생성
x2 <- matrix(c(1:12), ncol = 2)
x2
class(x2)

# 어레이
# 2행 5열 2차원
x3 <- array(1:20, dim = c(2, 5, 2))
x3
class(x3)

# 리스트
x4 <- list(f1 = a, # 벡터
           f2 = x1, # 데이터프레임
           f3 = x2, # 메트릭스
           f4 = x3) # 어레이이
x4

# 리스트 활용
library(ggplot2)
my_mpg <- as.data.frame(ggplot2::mpg)
x <- boxplot(my_mpg$hwy)
class(x) 
x

# 실제 값을 직접 하드코딩하지 말아라.