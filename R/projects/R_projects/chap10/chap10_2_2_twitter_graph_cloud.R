# 빈도수 막대그래프로 그리기
order <- arrange(top20, freq)$word

ggplot(data = top20, aes(x = word, y = freq)) +
  ylim(0, 2500) +
  geom_col() +
  coord_flip() +
  scale_x_discrete(limit = order) +
  geom_text(aes(label = freq), hjust = -0.3)

# 워드 클라우드
library(wordcloud)

library(RColorBrewer)

pal <- brewer.pal(8, "Dark2")

set.seed(1234)

wordcloud(words = df_word$word, # 단어
          freq = df_word$freq, # 빈도
          min.freq = 2, # 최소 단어 빈도
          max.words = 200, # 표현 단어 수
          random.order = F, # 고빈도 단어 중앙 배치
          rot.per = .1, # 회전 단어 비율
          scale = c(4, 0.2), # 단어 크기 범위
          colors = pal # 색상 목록
)
