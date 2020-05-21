# 노년층 비율이 높은 순서대로 막대 정렬
list_older_old <- region_ageg %>% 
  filter(ageg == "the older") %>% 
  arrange(pct)

list_older_old

order <- list_older_old$region
order
class(order)

ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip() +
  scale_x_discrete(limits = order)

# ===========================================================
# 연령대 순으로 막대 색 나열하기
class(region_ageg$ageg)

# 벡터형 문자열이기 때문에 level이 없음
levels(region_ageg$ageg)

# 레벨을 만들기 위해 팩터형으로 바꿈
region_ageg$ageg <- factor(region_ageg$ageg,
                           level = c("the older", "fifties",
                                     "forties", "thirties", "twenties"))
# 레벨 순서를 지정해줌. 지정하지 않으면 문자열의 크기대로 자동 설정됨.

class(region_ageg$ageg)
levels(region_ageg$ageg)

# 그래프 그리기
ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip() +
  scale_x_discrete(limits = order)







