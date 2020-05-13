# RDS: R 전용 데이터 파일. 다른 R 시스템에서만 불러들일 수 있음
saveRDS(df_midterm, file = "df_midterm.rds")

# 변수 삭제
rm(df_midterm)
df_midterm

# 복원
df_midterm <- readRDS("df_midterm.rds")
df_midterm
