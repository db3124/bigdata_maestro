# Dataframe을 csv 파일로 저장
df_midterm <- data.frame(id = c(1:4),
                         english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm

# quote: 큰따음표 안 쓴다
# ""로 묶이면 저장한 csv를 열 때 오류가 날 수 있음
write.csv(df_midterm, file = "df_midterm.csv", quote = F, row.names = F)

# 저장 시에 quote를 쓰면 stringAsFactors 파라미터 안 써도 됨
# 아니면 써야함
df_midterm2 <- read.csv("df_midterm.csv", stringsAsFactors = F)
df_midterm2
