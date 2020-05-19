# library 로드
library(ggplot2)
library(hrbrthemes)

# dataset
data <- data.frame(value = rnorm(100))

# basic histogram
hist_basic <- ggplot(data = data, aes(x = value)) +
  geom_histogram()

hist_basic

# binwidth
data2 <- read.table(
  "https://raw.githubusercontent.com/holtzy/data_to_viz/master/Example_dataset/1_OneNum.csv",
  header=TRUE)

hist_binwidth3 <- data2 %>% 
  filter(price < 300) %>% 
  ggplot(aes(x = price)) +
  geom_histogram(binwidth = 3) +
  ggtitle("Bin size = 3")

hist_binwidth3

hist_binwidth10 <- data2 %>% 
  filter(price < 300) %>% 
  ggplot(aes(x = price)) +
  geom_histogram(binwidth = 10) +
  ggtitle("Bin size = 10")

hist_binwidth10

hist_binwidth30 <- data2 %>% 
  filter(price < 300) %>% 
  ggplot(aes(x = price)) +
  geom_histogram(binwidth = 30) +
  ggtitle("Bin size = 30")

hist_binwidth30
  