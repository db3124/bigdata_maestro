# 변수명 바꾸기
# dplyr 패키지 로드
library(dplyr)

df_raw <- data.frame(var1 = c(1, 2, 1), var2 = c(2, 3, 2))
df_raw

df_new <- df_raw
df_new

# '새 변수명 = 기존 변수명' 순서로 입력해야 함
df_new <- rename(df_new, number = var2)
df_new <- rename(df_new, class = var1)
df_new
