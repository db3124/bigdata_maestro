# foreign 패키지 로드: spss 파일을 불러오기 위해
library(foreign)
library(dplyr)
library(ggplot2)

raw_welfare <- read.spss(file = "./res/koweps_hpwc14_2019_beta1.sav", to.data.frame = T, reencode = T)

View(raw_welfare)

welfare <- raw_welfare

# 
View(head(welfare))
str(welfare)
dim(welfare)
View(summary(welfare))
