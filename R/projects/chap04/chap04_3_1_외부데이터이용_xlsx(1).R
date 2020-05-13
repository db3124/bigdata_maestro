# 외부 데이터 이용하기
install.packages("readxl")
library(readxl)

df_exam <- read_excel("excel_exam.xlsx") 
df_exam
# ???
class(df_exam)

# 순수한 데이터프레임으로 만들기
df_exam <- as.data.frame(read_excel("excel_exam.xlsx")) 
class(df_exam)

# 절대경로(루트가 기준)로 파일 불러오기
df_exam <- as.data.frame(read_excel("C:/Users/CPBUserN/Documents/excel_exam.xlsx"))
df_exam

# 상대경로(스크립트 파일 기준)로 파일 불러오기
df_exam <- as.data.frame(read_excel("./res/excel_exam.xlsx"))
df_exam

# 분석하기
mean(df_exam$math)
mean(df_exam$english)