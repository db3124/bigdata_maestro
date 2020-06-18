# dplyr 패키지 이용 데이터 가공하기
# select(): 원하는 열 추출하는 함수
View(exam)
exam %>% select(math)
exam %>% select(english)
exam %>% select(math, science)

exam %>% select(-english, -science)
exam[, -c(4, 5)]

# filter()함수와 조합
exam %>% filter(class == 1) %>% select(math)
data.frame(math = exam[exam$class == 1, "math"])

# 상위에 위치한 데이터만 추출
exam %>% select(id, math) %>% head
exam %>% select(id, math) %>% head(10)

head(exam[, c("id", "math")], 10)
