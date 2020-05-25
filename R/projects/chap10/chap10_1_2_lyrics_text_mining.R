# 1. 형태소 분석을 하기 위한 사전 설정
useNIADic()

# 2. 데이터 준비하기
# 텍스트 문서 끝에는 eof : -1 값이 저장됨. 한 줄의 끝에는 개행(\n)이 있어야 함.
# 라인 하나를 하나의 문자열로 인식 -> 리스트로 반환됨.
txt <- readLines("./res/hiphop.txt")

head(txt)

# 3. 특수문자 제거하기
library(stringr)
# //w: 정규표현식의 시작을 나타내는 기호.
# 뒤의 공백인 이유는 결국 정규표현식을 사용하지 않겠다는 뜻
txt <- str_replace_all(txt, "\\W", " ")


# 4. 가장 많이 사용된 단어 알아보기
# 명사 추출
test <- extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")
test

# 가사에서 명사 추출
nouns <- extractNoun(txt)

# 리스트를 벡터로 변환 후 빈도수 출력
wordcount <- table(unlist(nouns))

wordcount

# table을 데이터프레임으로
df_word <- as.data.frame(wordcount, stringsAsFactors = F)

View(df_word)

# 변수명 변경
df_word <- rename(df_word,
                  word = Var1,
                  freq = Freq)

# 두 글자 이상 단어 추출
df_word <- filter(df_word, nchar(word) >= 2)

# 빈도 순으로 정렬
top_20 <- df_word %>% 
  arrange(desc(freq)) %>% 
  head(20)

View(top_20)

# length : 벡터에 저장된 값의 개수 / nchar : 문자열 속 문자의 개수
v <- c("apple", "banana", "딸기")

length(v)
nchar(v)

length("apple")
nchar("apple")
