# 패키지 로드
library(dplyr)
library(ggplot2)

# 데이터셋 복사본
my_mpg <- as.data.frame(ggplot2::mpg)

#
my_mpg$tot <- (my_mpg$cty + my_mpg$hwy) / 2

View(head(my_mpg))

aggregate(data = my_mpg[my_mpg$class == "compact" 
                        | my_mpg$class == "suv",],
          tot ~ class, mean)
