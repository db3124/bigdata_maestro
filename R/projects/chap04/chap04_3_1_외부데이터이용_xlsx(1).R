# 외부 데이터 이용하기
# readxl: excel 불러오는 패키지 다운 및 로드
install.packages("readxl")
library(readxl)

# 프로젝트 폴더에 파일이 있을 때: 파일명만 씀
df_exam <- read_excel("excel_exam.xlsx")
df_exam
class(df_exam) # tbl_df, tbl, data.frame

# 순수한 데이터프레임으로 만들기
df_exam <- as.data.frame(read_excel("excel_exam.xlsx")) 
class(df_exam) # data.frame

# 절대경로: 루트가 기준이 되어 파일 불러오기
df_exam <- as.data.frame(read_excel("C:/Users/CPBUserN/Documents/excel_exam.xlsx"))
df_exam

# 상대경로: 스크립트 파일이 있는 곳을 기준으로 파일 불러오기
# 프로젝트 폴더 안의 reS 폴더에 excel 파일이 있을 때
df_exam <- as.data.frame(read_excel("./res/excel_exam.xlsx"))
df_exam

# 분석하기
mean(df_exam$math)
mean(df_exam$english)