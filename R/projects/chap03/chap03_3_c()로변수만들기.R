# c() 함수 : Combine
var1 <- c(1, 2, 5, 7, 8)
var1

# 인덱스로 값 사용
var1[1]
var1[3] + var1[5]

var1[4] <- 11
var1[4]

var1
var1[6] <- 22

var1[3:5]

# c() 함수에서 범위 지정하기
var2 <- c(1:10)
var2

var3 <- c(4, 7:9)
var3
typeof(var3)

var3 <- c(4, 7:9, "apple")
var3
typeof(var3) # 모든 숫자가 문자로 바뀜

