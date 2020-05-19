# 1. 데이터 준비

# 2. spss 파일을 불러오기 위한 패키지 로드
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

# 3. 데이터 불러오기
raw_welfare <- read.spss(file = "./res/Koweps_hpc10_2015_beta1.sav",
                         to.data.frame = T)

View(raw_welfare)

welfare <- raw_welfare

# 4. 데이터 검토하기
View(head(welfare))
View(tail(welfare))
dim(welfare)
str(welfare)
View(summary(welfare))

# 5. 변수명 바꾸기
welfare <- rename(welfare,
                  sex = h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  code_region = h10_reg7)

welfare %>%
  select(sex, birth, marriage, religion, income, code_job, code_region)

# 복사본 만들기와 변수명 바꾸기를 하나의 코드로
welfare <- raw_welfare %>%
  select(h10_g3, h10_g4, h10_g10, h10_g11,
         p1002_8aq1, h10_eco9, h10_reg7) %>% 
  rename(sex = h10_g3,
         birth = h10_g4,
         marriage = h10_g10,
         religion = h10_g11,
         income = p1002_8aq1,
         code_job = h10_eco9,
         code_region = h10_reg7)

View(head(welfare))

