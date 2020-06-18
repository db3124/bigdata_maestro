# 문자를 다루는 함수
str5 <- c("Hello", "World", "is", "good!")
str5

# paste(): 구분자 파라미터 이용. 하나의 문자열로 만드는 함수
paste(str5, collapse = ",") 
paste(str5, collapse = " ")

# 함수의 결과를 변수에 저장
x <- c(1, 2, 3)
x_mean <- mean(x)
x_mean

str5_paste <- paste(str5, collapse = " ")
str5_paste






