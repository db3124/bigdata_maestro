# class가 compact, subcompact, suv인 자동차의 cty. 상자 그림으로 만들기
df_class2 <- mpg %>%
  filter(class %in% c("compact", "subcompact", "suv")) %>% 
  select(class, cty)

df_class2

ggplot(data = df_class2, aes(x = class, y = cty)) +
  geom_boxplot(color = c(1:3))

ggplot(data = df_class2, aes(x = class, y = cty)) +
  geom_boxplot(color = c("red", "green", "blue"))
