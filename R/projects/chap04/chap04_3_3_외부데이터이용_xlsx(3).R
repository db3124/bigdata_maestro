# 시트가 여러개인 엑셀 파일 불러오기
df_exam_sheet <- as.data.frame(read_excel("./res/excel_exam_sheet.xlsx", sheet = 3))
df_exam_sheet

# 엑셀 표 시작점이 A1이 아닐 때, 범위 지정하여 불러오기
df_exam_sheet <- as.data.frame(read_excel("./res/excel_exam_sheet.xlsx",
                                          sheet = 4,
                                          range = "C3:G11"))
df_exam_sheet
