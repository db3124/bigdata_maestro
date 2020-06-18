# 엑셀 불러오기 위한 패키지 로드
library(readxl)

View(welfare_income)

# 1. 변수 검토 및 전처리: 직업, 월급, 성별
# 직업 변수 검토
class(welfare_income$code_job)
table(welfare_income$code_job)

# 직업 변수 전처리
list_job <- read_excel("./res/Koweps_Codebook.xlsx", sheet = 2)
View(list_job)
dim(list_job)

table(is.na(welfare_income$code_job))
table(welfare_income$code_job)

# welfare_income 데이터 프레임과 join
# 경우에 따라 left, inner 적용 다름. NA가 많을 경우, left가 더 적합할 수도
welfare_income <- left_join(welfare_income, list_job, id = "code_job")

View(welfare_income)
table(is.na(welfare_income))

# 2. 변수 간 관계 분석: 
# 2-1. 직업별 월급 평균표 만들기
job_income <- welfare_income %>% 
  group_by(job) %>% 
  summarise(mean_income = mean(income))

head(job_income)

job_top10 <- job_income %>% 
  arrange(desc(mean_income)) %>% 
  head(10)

job_top10

job_bottom10 <- job_income %>% 
  arrange(desc(mean_income)) %>% 
  tail(10)

job_bottom10

# 2-2. 그래프 만들기
ggplot(data = job_top10, aes(x = reorder(job, mean_income),
                             y = mean_income)) +
  geom_col() +
  coord_flip() +
  ggtitle("TOP INCOME 10 JOBS") +
  xlab("job name")

ggplot(data = job_bottom10, aes(x = reorder(job, mean_income),
                                y = mean_income)) +
  geom_col() +
  coord_flip() +
  ggtitle("BOTTOM INCOME 10 JOBS") +
  xlab("job name")





