library(dplyr)
library(ggplot2)
library(scales)
library(RColorBrewer)

raw_audience <- read.csv('./res/월별_관객수_ansi.csv')

audience <- raw_audience


# scale_fill_brewer(palette = "Greens") +
# scale_x_continuous(breaks = c(1:12)) +
  
# 그래프 그리기
ggplot(data = audience, aes(x = month, y = audience, fill = month)) +
  geom_col() +
  scale_x_continuous(breaks = c(1:12)) +
  ggtitle('월별 관객수') +
  theme(plot.title = element_text(hjust = 0.5),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        axis.line = element_line(colour = "black")) +
  xlab('월') +
  ylab('관객수')
