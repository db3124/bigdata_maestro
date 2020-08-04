library(dplyr)
library(ggplot2)

raw <- read.csv('./res/계절별_장르_ansi.csv')

fa1 <- raw %>% 
  filter(season == 'Fall') %>% 
  select(season, genre1) %>%
  rename('genre' = 'genre1')

fa2 <- raw %>% 
  filter(season == 'Fall') %>% 
  select(season, genre2) %>% 
  rename('genre' = 'genre2')

fa3 <- raw %>% 
  filter(season == 'Fall') %>% 
  select(season, genre3) %>% 
  rename('genre' = 'genre3')

fa4 <- raw %>% 
  filter(season == 'Fall') %>% 
  select(season, genre4) %>% 
  rename('genre' = 'genre4')

fa5 <- raw %>% 
  filter(season == 'Fall') %>% 
  select(season, genre5) %>% 
  rename('genre'= 'genre5')

fa_tmp <- bind_rows(fa1, fa2, fa3, fa4, fa5)

fa_tmp <- na.omit(fa_tmp)

write.csv(fa_tmp, 'fall.csv')

fall <- read.csv('fall.csv')

fa_cnt <- fall %>%
  group_by(genre) %>% 
  summarise(n = n())

# 그래프 그리기
ggplot(data = fa_cnt, aes(x = reorder(genre, n), y = n, fill = genre)) +
  geom_col() +
  coord_flip() +
  ggtitle('가을 장르 빈도') +
  theme(plot.title = element_text(hjust = 0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) +
  xlab('장르') +
  ylab('빈도')
