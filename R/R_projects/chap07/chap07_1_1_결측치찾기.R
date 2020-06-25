# 패키지 로드
library(dplyr)
library(ggplot2)

# 결측치 찾기
df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df # 문자로 구성된 변수의 NA는 <NA>로 출력됨

# 결측치 확인: df의 각 값의 NA인지 여부
is.na(df)

# NA의 개수: table() 함수 이용
table(is.na(df))

# 속성별 NA의 개수
table(is.na(df$sex))
table(is.na(df$score))

# 결측치가 포함된 데이터에 함수 적용
mean(df$score)
sum(df$score)
