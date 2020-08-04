library(dplyr)
library(ggplot2)

raw <- read.csv('./res/계절별_장르_ansi.csv')

spr1 <- raw %>% 
  filter(season == 'Spring') %>% 
  select(season, genre1) %>%
  rename('genre' = 'genre1')

spr2 <- raw %>% 
  filter(season == 'Spring') %>% 
  select(season, genre2) %>% 
  rename('genre' = 'genre2')

spr3 <- raw %>% 
  filter(season == 'Spring') %>% 
  select(season, genre3) %>% 
  rename('genre' = 'genre3')

spr4 <- raw %>% 
  filter(season == 'Spring') %>% 
  select(season, genre4) %>% 
  rename('genre' = 'genre4')

spr5 <- raw %>% 
  filter(season == 'Spring') %>% 
  select(season, genre5) %>% 
  rename('genre'= 'genre5')

spr_tmp <- bind_rows(spr1, spr2, spr3, spr4, spr5)

spr_tmp <- na.omit(spr_tmp)

write.csv(spr_tmp, 'spring.csv')

spring <- read.csv('spring.csv')

spr_cnt <- spring %>%
  group_by(genre) %>% 
  summarise(n = n())

# 그래프 그리기
ggplot(data = spr_cnt, aes(x = reorder(genre, n), y = n, fill = genre)) +
  geom_col() +
  coord_flip() +
  ggtitle('봄 장르 빈도') +
  theme(plot.title = element_text(hjust = 0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) +
  xlab('장르') +
  ylab('빈도')
