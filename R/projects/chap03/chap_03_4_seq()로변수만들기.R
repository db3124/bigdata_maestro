# seq() 함수 : Sequence
var3 <- seq(10, 15)
var3

# seq() 함수와 by 파라미터
var4 <- seq(1, 10, by = 2)
var4 <- seq(1, 10, 2) # 넘겨줘야 하는 값의 순서가 정해져 있다. 시작/종료/간격
# 파라미터를 이용하여 순서 변경 가능
var4 <- seq(by = 2, to = 20, from = 5)
var4
