# 1. 패키지 로드
library(readxl)
library(ggplot2)
library(dplyr)

# 2. 엑셀 파일 불러오기
# 디지털격차지수 - 역량, 접근, 활용, 종합
capacity <- read.csv("./res/일반국민_대비_취약계층_디지털정보화역량수준.csv")

approach <- read.csv("./res/일반국민_대비_취약계층_디지털정보화접근수준.csv")

use <- read.csv("./res/일반국민_대비_취약계층_디지털정보화활용수준.csv")

total <- read.csv("./res/일반국민_대비_취약계층_디지털정보화종합수준.csv")

View(capacity)

capacity<- data.frame(capacity)

approach <- data.frame(approach)

use <- data.frame(use)

total <- data.frame(total)

# 3. 그래프 그리기
# 역량
ggplot(data = capacity, aes(x = year, y = mean, col = group), size=1.3) +
  geom_line() +
  xlab("년도") +
  ylab("비율") 


# 접근
ggplot(data = approach, aes(x = year, y = mean, col = group), size=1.3) +
  geom_line() +
  xlab("년도") +
  ylab("비율") 

# 활용
ggplot(data = use, aes(x = year, y = mean, col = group), size=1.3) +
  geom_line() +
  xlab("년도") +
  ylab("비율") 

# 종합
ggplot(data = total, aes(x = year, y = mean, col = group), size=1.3) +
  geom_line() +
  xlab("년도") +
  ylab("비율") 

ggplot(data = total, aes(x = year, y = mean, fill = group)) +
  geom_col() +
  xlab("년도") +
  ylab("비율")
