# 중첩 조건문 활용, 들여쓰기
mpg_new$grade <- ifelse(mpg_new$total >= 30, "A",
                        ifelse(mpg_new$total >= 20, "B", "C"))
View(head(mpg_new, 20))
table(mpg_new$grade)

mpg_new$grade2 <- ifelse(mpg_new$total >= 30, "A",
                         ifelse(mpg_new$total >= 25, "B",
                                ifelse(mpg_new$total >= 20, "C", "D")))
View(head(mpg_new, 20))
table(mpg_new$grade2)
qplot(mpg_new$grade2)

# 특정 행, 열 추출
v <- c(10:20)
v

v[1]
v[c(1, 3, 5)]
v[c(9:11)]

exam <- read.csv("./res/csv_exam.csv")
View(exam)

# [행의 조건, 벡터에서 요소를 선택하는 방식]
exam[exam$class == 3,]
exam[exam$class == 3, c("math", "science")]

mpg_new[mpg_new$grade == "A", c("manufacturer", "model", "year", "grade")]
mpg_new[mpg_new$grade == "A", c(1, 3, 5, 7)]
