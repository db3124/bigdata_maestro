library(dplyr)
library(ggplot2)

raw <- read.csv('./res/계절별_장르_ansi.csv')

win1 <- raw %>% 
  filter(season == 'Winter') %>% 
  select(season, genre1) %>%
  rename('genre' = 'genre1')

win2 <- raw %>% 
  filter(season == 'Winter') %>% 
  select(season, genre2) %>% 
  rename('genre' = 'genre2')

win3 <- raw %>% 
  filter(season == 'Winter') %>% 
  select(season, genre3) %>% 
  rename('genre' = 'genre3')

win4 <- raw %>% 
  filter(season == 'Winter') %>% 
  select(season, genre4) %>% 
  rename('genre' = 'genre4')

win5 <- raw %>% 
  filter(season == 'Winter') %>% 
  select(season, genre5) %>% 
  rename('genre'= 'genre5')

win_tmp <- bind_rows(win1, win2, win3, win4, win5)

win_tmp <- na.omit(win_tmp)

write.csv(win_tmp, 'winter.csv')

winter <- read.csv('winter.csv')

win_cnt <- winter %>%
  group_by(genre) %>% 
  summarise(n = n())

# 그래프 그리기
ggplot(data = win_cnt, aes(x = reorder(genre, n), y = n, fill = genre)) +
  geom_col() +
  coord_flip() +
  ggtitle('겨울 장르 빈도') +
  theme(plot.title = element_text(hjust = 0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) +
  xlab('장르') +
  ylab('빈도')
