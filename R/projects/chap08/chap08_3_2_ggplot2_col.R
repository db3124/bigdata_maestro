# 막대 그래프 그리기
library(dplyr)
df_mpg <- mpg %>% 
  group_by(drv) %>% 
  summarise(mean_hwy = mean(hwy))
df_mpg

# 새로 만든 df_mpg 데이터 프레임으로 그래프 그리기
# geom_col(): x축, y축 모두 속성일 때
ggplot(data = df_mpg, aes(x = drv, y = mean_hwy)) +
  geom_col()

# 정렬: 막대를 값의 크기 순으로 정렬. -를 붙이면 내림차순
ggplot(data = df_mpg, aes(x = reorder(drv, mean_hwy), y = mean_hwy)) +
  geom_col()

ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy)) +
  geom_col()
