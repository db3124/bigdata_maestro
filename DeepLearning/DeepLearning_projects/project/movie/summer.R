library(dplyr)
library(ggplot2)

raw <- read.csv('./res/계절별_장르_ansi.csv')

sum1 <- raw %>% 
  filter(season == 'Summer') %>% 
  select(season, genre1) %>%
  rename('genre' = 'genre1')

sum2 <- raw %>% 
  filter(season == 'Summer') %>% 
  select(season, genre2) %>% 
  rename('genre' = 'genre2')

sum3 <- raw %>% 
  filter(season == 'Summer') %>% 
  select(season, genre3) %>% 
  rename('genre' = 'genre3')

sum4 <- raw %>% 
  filter(season == 'Summer') %>% 
  select(season, genre4) %>% 
  rename('genre' = 'genre4')

sum5 <- raw %>% 
  filter(season == 'Summer') %>% 
  select(season, genre5) %>% 
  rename('genre'= 'genre5')

sum_tmp <- bind_rows(sum1, sum2, sum3, sum4, sum5)

sum_tmp <- na.omit(sum_tmp)

write.csv(sum_tmp, 'summer.csv')

summer <- read.csv('summer.csv')

sum_cnt <- summer %>%
  group_by(genre) %>% 
  summarise(n = n())

# 그래프 그리기
ggplot(data = sum_cnt, aes(x = reorder(genre, n), y = n, fill = genre)) +
  geom_col() +
  coord_flip() +
  ggtitle('여름 장르 빈도') +
  theme(plot.title = element_text(hjust = 0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) +
  xlab('장르') +
  ylab('빈도')
