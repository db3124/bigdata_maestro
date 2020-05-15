# dplyr 패키지 이용 데이터 가공하기
# bind(): 속성의 개수, 각 속성의 값(같은 벡터안에)은 같은 유형의 값
# 원래 하나였던 것을 다시 붙이는 작업
# ex) 분기별, 년별 주문 정보
group_a <- data.frame(id = c(1:5),
                      test = c(60, 80, 70, 90, 85))
group_a

group_b <- data.frame(id = c(1:5),
                      test = c(70, 83, 65, 95, 80))
group_b

group_all <- bind_rows(group_a, group_b)
group_all

