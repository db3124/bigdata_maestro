# dplyr 패키지 이용 데이터 가공하기
# mutate(): 파생변수 추가
exam %>% mutate(total = math + english + science)
exam %>% mutate(total = math + english + science,
                mean = (math + english + science) / 3)


# ifelse 이용하여 파생변수 만들기
# head뒤에 넣을 파라미터가 없으면 () 생략 가능
exam %>%
  mutate(test = ifelse(math >= 70, "pass", "fail")) %>%
  head

# arrange로 정렬하고 출력
exam %>%
  mutate(test = ifelse(math >= 70, "pass", "fail")) %>%
  arrange(desc(test))
