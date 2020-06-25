# 결측치 제거
# NA가 있는 행 출력
df %>% filter(is.na(score))

# NA가 포함된 행 제외한 행 출력
df %>% filter(!is.na(score))

df_nomiss <- df %>% filter(!is.na(score))
df_nomiss

# 결측치 제거 후 수치 연산
sum(df_nomiss$score)
mean(df_nomiss$score)

# 여러 변수 동시에 결측치 없는 데이터 추출
# 추출할 수 있지만, 모든 NA를 제거하는 것이 의미가 있는지 살펴봐야 함
df %>% filter(!is.na(score) & !is.na(sex))

# na.omit() 이용 결측치 제거: 모든 NA가 있는 행 제거
# 분석에 필요한 행도 제거될 수 있다는 점에서, filter를 이용하여 제거하는 것을 권장
df_nomiss2 <- na.omit(df)
df_nomiss2
