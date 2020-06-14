# 1. 패키지 로드
library(KoNLP)

library(dplyr)
library(ggplot2)

library(wordcloud)
library(stringr)

library(RColorBrewer)

# 1. 형태소 분석을 하기 위한 사전 설정
useNIADic()

# 2. 데이터 준비하기
txt <- readLines("./res/교육과정.txt")

head(txt)

# 3. 특수문자 제거하기
txt <- str_replace_all(txt, "\\W", " ")

# 4. 가장 많이 사용된 단어 알아보기
nouns <- extractNoun(txt)

# 5. 리스트를 벡터로 변환 후 빈도수 출력
wordcount <- table(unlist(nouns))

wordcount

# 6. table을 데이터프레임으로
df_word <- as.data.frame(wordcount, stringsAsFactors = F)

View(df_word)

# 7. 변수명 변경
df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

# 8. 두 글자 이상 단어 추출
df_word <- filter(df_word, nchar(word) >= 2)

# 9. 빈도 순으로 정렬
top_20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)

View(top_20)

# 10. Dark2 색상 목록에서 8개 색상 추출
pal <- brewer.pal(8, "Dark2")
pal2 <- brewer.pal(9, "Reds")[5:9]
?brewer.pal

# 11. 난수 고정하기
# 워드클라우드 실행 전에 매번 seed를 고정해야 함.
set.seed(1234)

# 12. 워드 클라우드 만들기
wordcloud(words = df_word$word, # 단어
          freq = df_word$freq, # 빈도
          min.freq = 2, # 최소 단어 빈도
          max.words = 200, # 표현 단어 수
          random.order = F, # 고빈도 단어 중앙 배치
          rot.per = .1, # 회전 단어 비율
          scale = c(4, 0.3), # 단어 크기 범위. 워드클라우드 크기
          colors = pal # 색상 목록
)
