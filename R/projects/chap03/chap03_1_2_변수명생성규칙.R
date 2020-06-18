# 변수명 생성 규칙
# 문자(알파벳)와 .로 시작
# 문자, 숫자, 온점(.), 언더바(_)를 조합하여 만듦
score <- 90

# 가능하나 권장하지 않음. 온점은 hidden file을 뜻하기 때문
.score <- 70 

# 숫자, 언더바로 시작 못함
# 3score <- 80
# _score <- 100

# 변수명으로 한글을 사용할 수 있으나 오류가 발생할 수 있음
변수 <- 'cho'
변수 # 오류

my_first_name <- 'longlee'
my_first_name

# 대소문자 구분함. 헷갈리지 않게 소문자로만 만드는 것을 권장
name <- 'cho'
NAME <- 'CHO'

# 예약어(reserved word)는 사용불가
# 예약어: 문법적 의미를 가진 미리 약속된 단어
# for <- 30 
?reserved
