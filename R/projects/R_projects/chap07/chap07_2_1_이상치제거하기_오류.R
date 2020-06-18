# 이상치: 오류 또는 극단적인 값 -> 분석 결과에 왜곡을 가져오므로 이상치 제거 후 분석함
# sex는 1 또는 2, score는 1, 2, 3, 4, 5
outlier <- data.frame(sex = c(1, 2, 1, 3, 2, 1),
                      score = c(5, 4, 3, 4, 2, 6))
outlier

# 결측치 있는지 확인
table(outlier$sex)
table(outlier$score)

# 결측 처리
outlier$sex <- ifelse(!(outlier$sex == 1 | outlier$sex == 2),
                      NA, outlier$sex)
outlier$sex <- ifelse(outlier$sex != 1 & outlier$sex != 2,
                      NA, outlier$sex )
outlier

outlier$score <- ifelse(!(outlier$score %in% c(1:5)),
                        NA, outlier$score)
outlier

# 결측치를 제외한 후 성별에 따른 score 평균
outlier %>% 
  filter(!(is.na(sex)) & !(is.na(score))) %>% 
  group_by(sex) %>% 
  summarise(mean_score = mean(score))
