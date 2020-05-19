# Q1 "suv" 차종을 대상으로 평균 cty가 높은 회사 다섯 곳 막대 그래프로 표현, 내림차순
df_suv <- mpg %>%
  filter(class == "suv") %>% 
  group_by(manufacturer) %>% 
  summarise(mean_cty = mean(cty)) %>%
  arrange(desc(mean_cty)) %>% 
  head(5)

df_suv

ggplot(data = df_suv,
       aes(x = reorder(manufacturer,
                       -mean_cty), y = mean_cty)) +
  geom_col()


# Q2 class 빈도를 표현한 막대 그래프
# reorder()를 쓰기 위해선 y축에 변수가 있어야 함
ggplot(data = mpg, aes(x = class)) + geom_bar()

# reorder() 사용하기 위해 y축 변수 생성=파생변수 생성
df_class <- mpg %>% 
  group_by(class) %>% 
  summarise(count= n())

df_class

ggplot(data = df_class, 
       aes(x = reorder(class, -count), y = count)) +
  geom_col() +
  xlab("class")

ggplot(data = df_class, 
       aes(x = reorder(class, -count), y = count)) +
  geom_bar(stat = "identity")
