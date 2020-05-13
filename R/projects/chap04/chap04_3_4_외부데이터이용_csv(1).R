# csv 파일 불러오기. 별도의 패키지 설치 불필요
df_csv_exam <- read.csv("./res/csv_exam.csv")
df_csv_exam

# 속성명이 없는 csv 파일 읽기
df_csv_exam_novar <- read.csv("./res/csv_exam_novar.csv")
df_csv_exam_novar
                          
df_csv_exam_novar <- read.csv("./res/csv_exam_novar.csv", header = F)
df_csv_exam_novar