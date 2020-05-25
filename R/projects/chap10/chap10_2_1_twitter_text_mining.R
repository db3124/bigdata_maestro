library(rJava)
library(memoise)
library(KoNLP)
library(dplyr)
library(ggplot2)

# 1. 형태소 분석을 하기 위한 사전 설정
useNIADic()

# 1. 데이터 준비하기
twitter <- read.csv("./res/twitter.csv",
                    header = T,
                    stringsAsFactors = F,
                    fileEncoding = "UTF-8")

View(twitter)

# 변수명 수정
twitter <- rename(twitter,
                  no = "번호",
                  id = "계정이름",
                  date = "작성일",
                  tw = "내용")

head(twitter)

# 특수문자 제거
library(stringr)
twitter$tw <- str_replace_all(twitter$tw, "\\W", " ")
head(twitter$tw)

# 단어 빈도표 만들기
nouns <- extractNoun(twitter$tw)
wordcount <- table(unlist(nouns))

View(wordcount)

df_word <- as.data.frame(wordcount, stringsAsFactors = F)

df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

# 2글자 이상만 추출
df_word <- filter(df_word, nchar(word) >= 2)

# 상위 20개 추출
top20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)

top20
