# 첫 번째 행이 컬럼명이 아니고, 데이터인 경우
# 데이터 유실을 제거하기 위해 col_names 옵션 설정
df_exam_novar <- as.data.frame(read_excel("./res/excel_exam_novar.xlsx"))
df_exam_novar

df_exam_novar <- as.data.frame(read_excel("./res/excel_exam_novar.xlsx",
                                          col_names = F)) # F는 대문자
df_exam_novar
