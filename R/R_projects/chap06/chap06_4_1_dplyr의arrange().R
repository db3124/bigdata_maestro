# dplyr 패키지 이용 데이터 가공하기
# arrange(): 원하는 순서로 정렬. default는 오름차순
exam %>% arrange(math)
exam %>% arrange(desc(math))

# 2개의 열로 정렬
exam %>% arrange(class, math)
exam %>% arrange(class, desc(math))
