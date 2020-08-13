# 필요 패키지 로드
library(haven)
library(dplyr)
library(ggplot2)

path = file.path("./res/koweps_hpwc14_2019_beta1.sav")
dataset = read_sav(path)

raw_household <- as.data.frame(dataset)

# 복사본 만들기
household <- raw_household

View(household)

dim(household)
