# dplyr 패키지 이용 데이터 가공하기
# join(): inner(교집합), left(왼편차집합+교집합), right(오른편차집합+교집합), full_join()
# 왜 합칠까? 연관성 # 서로 공통 속성 有
test1 <- data.frame(id = c(1:5),
                    midterm = c(60, 80, 70, 90, 85))
test1

test2 <- data.frame(id = c(1:5),
                    finterm = c(70, 83, 65, 95, 80))
test2

# inner_join()이 기본이다.
total <- inner_join(test1, test2, by = "id")
total

# 차집합이 있을 때
test3 <- data.frame(id = c(1:5),
                    midterm = c(60, 80, 70, 90, 85))
test3

test4 <- data.frame(id = c(2:6),
                    finterm = c(70, 83, 65, 95, 80))
test4

total2 <- inner_join(test3, test4, by = "id")
total2

total2 <- left_join(test3, test4, by = "id")
total

total2 <- right_join(test3, test4, by = "id")
total2

total2 <- full_join(test3, test4, by = "id")
total2

# 공통된 속성의 열이름이 다를 때: c()에 넣어서 지정
test1 <- data.frame(id1 = c(1:5),
                    midterm = c(60, 80, 70, 90, 85))
test1

test2 <- data.frame(id2 = c(1:5),
                    finterm = c(70, 83, 65, 95, 80))
test2

inner_join(test1, test2, by = c("id1" = "id2"))

# bind_cols(test1, test2)

# exam 데이터넷, 반별 담임교사 명단
name <- data.frame(class = c(1:5),
                   teacher = c("kim", "lee", "park", "choi", "jung"))
name

View(exam)

exam_new <- inner_join(exam, name, by = "class")
View(exam_new)

# 특별한 값: NA, NULL, NaN, Inf
# NA: not applicable. 결측치. 존재해야 하는데 없는 값
v1 <- NA
v1

v2 <- c(1, 2, 3, NA, 4)
v2

# NULL: 값을 가지지 않는 변수, 현재 존재하지 않는 값
v3 <- c(1, 2, 3, NULL, 5)
v3

# NaN: Not a Number. 표현할 수 없는 숫자
sqrt(36)
sqrt(-3)

# Inf: 무한대
v4 <- Inf
v5 <- -Inf

10 / 0

