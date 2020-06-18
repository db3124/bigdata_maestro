# 중첩 조건문 활용, 들여쓰기
df_mpg$grade <- ifelse(df_mpg$total >= 30, "A",
                        ifelse(df_mpg$total >= 20, "B", "C"))
View(head(df_mpg, 20))
table(df_mpg$grade)

df_mpg$grade2 <- ifelse(df_mpg$total >= 30, "A",
                         ifelse(df_mpg$total >= 25, "B",
                                ifelse(df_mpg$total >= 20, "C", "D")))
View(head(df_mpg, 20))
table(df_mpg$grade2)
qplot(df_mpg$grade2)

# 특정 행, 열 추출
v <- c(10:20)
v

v[1]
v[c(1, 3, 5)]
v[c(9:11)]

exam <- read.csv("./res/csv_exam.csv")
View(exam)

# [행의 조건, 벡터에서 요소를 선택하는 방식]
# , 빼먹지 말 것
exam[exam$class == 3,]
exam[exam$class == 3, c("math", "science")]

df_mpg[df_mpg$grade == "A", c("manufacturer", "model", "year", "grade")]
df_mpg[df_mpg$grade == "A", c(1, 3, 5, 7)]
