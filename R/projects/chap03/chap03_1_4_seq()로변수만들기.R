# seq() 함수 : Sequence
var3 <- seq(10, 15)
var3

# seq() 함수와 by 파라미터
var4 <- seq(1, 10, by = 2)
var4 <- seq(1, 10, 2) # 넘겨줘야 하는 값의 순서가 정해져 있다. 시작/종료/간격
# 파라미터를 이용하여 순서 변경 가능
var4 <- seq(by = 2, to = 20, from = 5)
var4

var5 <- seq(1, 10, by = 3)
var5

var1 <- c(1, 2, 5, 7, 8) 
var2 <- c(1:5)
var1 + 2
var1
var1 + var2
# 벡터에 들어 있는 값의 개수가 다르면, 한 바퀴 돌아서 다시 앞으로 돌아와 연산
var6 <- c(1, 3, 5)
var1 + var6
