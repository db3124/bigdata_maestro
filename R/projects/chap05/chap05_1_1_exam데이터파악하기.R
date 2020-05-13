# exam 데이터 파악하기
exam <- read.csv("./res/csv_exam.csv")
exam

# 데이터 앞부분 출력
head(exam)
head(exam, 10)

# 데이터 뒷부분 출력
tail(exam)
tail(exam, 10)

# 뷰어창에서 데이터 확인. V 대문자인 것 주의
View(exam)
View(head(exam))
View(tail(exam))

# 데이터의 차원
dim(exam)

# 데이터의 속성
str(exam)

# 요약 통계량: 컬럼별 요약 통계
summary(exam)
