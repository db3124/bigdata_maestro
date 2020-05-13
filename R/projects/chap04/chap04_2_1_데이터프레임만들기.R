# 데이터프레임 만들기
# 1. 변수=컬럼(column)=속성 만들기 -> 벡터 형태
english <- c(90, 80, 60, 70)
english

math <- c(50, 60, 100, 20)
math

# 2. 데이터 프레임 만들기
df_midterm <- data.frame(english, math)
df_midterm

class <- c(1, 1, 2, 2)
class

# 3. class 속성 추가하여 데이터 프레임 생성
df_midterm <- data.frame(english, math, class)
df_midterm

# 4. 분석하기: 평균 구하기
mean(df_midterm$english)
mean(df_midterm$math)

# 5. 데이터 프레임 한 번에 만들기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50, 60, 100, 20),
                         class = c(1, 1, 2, 2))
df_midterm
