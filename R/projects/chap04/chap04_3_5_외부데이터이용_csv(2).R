# Dataframe을 csv 파일로 저장
df_midterm <- data.frame(id = c(1:4),
                         english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

# quote = F: 큰따음표 안 쓴다: factor로 저장한다
# ""로 묶이면 저장한 csv를 열 때 오류가 날 수 있음
# row.names = F: 행의 순서를 나타내는 숫자를 행이름으로 저장하지 않음
write.csv(df_midterm, file = "df_midterm.csv", quote = F, row.names = F)

# 저장 시에 quote = T 면 stringAsFactors 파라미터 안 써도 됨
# 아니면 써야함
df_midterm2 <- read.csv("df_midterm.csv")
df_midterm2 <- read.csv("df_midterm.csv", stringsAsFactors = F)
df_midterm2
str(df_midterm2)
