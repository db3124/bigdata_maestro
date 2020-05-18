# na 제외하고 수학 평균 구하기
mean(exam$math, na.rm = T)

# na를 평균값으로 대체
exam$math <- ifelse(is.na(exam$math), 55, exam$math)
exam

# 대체 후 평균 구하기
mean(exam$math)
