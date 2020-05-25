# 패키지 설치
install.packages("wordcloud")
library(wordcloud)

# 1. 글자 색을 표현하는 패키지. R에 내장되어 있음
library(RColorBrewer)

# 2. Dark2 색상 목록에서 8개 색상 추출
pal <- brewer.pal(8, "Dark2")
pal2 <- brewer.pal(9, "Reds")[5:9]
?brewer.pal

# 3. 난수 고정하기
# wordcloud() 함수를 실행 시 난수 이용 다른 모양의 워드 클라우드 생성
# 만들기 전에 난수 고정하기: 워드 클라우드 같은 결과를 출력하기 위해
# 워드클라우드 실행 전에 매번 seed를 고정해야 함.
set.seed(1234)

# 4. 워드 클라우드 만들기
wordcloud(words = df_word$word, # 단어
          freq = df_word$freq, # 빈도
          min.freq = 2, # 최소 단어 빈도
          max.words = 200, # 표현 단어 수
          random.order = F, # 고빈도 단어 중앙 배치
          rot.per = .1, # 회전 단어 비율
          scale = c(4, 0.3), # 단어 크기 범위
          colors = pal2 # 색상 목록
          )
          