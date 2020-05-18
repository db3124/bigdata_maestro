# na.rm 파라미터 이용하여 결측치 제거
mean(df$score, na.rm = T)
sum(df$score, na_rm = T)

# summarise()에 na.rm 적용
# csv_exam.csv 파일 불러오기
exam <- read.csv("./res/csv_exam.csv")

# 일부 값을 결측치로 바꾸기
exam[c(3, 8, 15), "math"] <- NA
head(exam)

# mean()함수에 na.rm 적용
exam %>% summarise(mean_math = mean(math)) # NA

exam %>% summarise(mean_math = mean(math, na.rm = T))

exam %>% summarise(mean_math = mean(math, na.rm = T),
                   mean_english = mean(english, na.rm = T),
                   mean_science = mean(science, na.rm = T))
