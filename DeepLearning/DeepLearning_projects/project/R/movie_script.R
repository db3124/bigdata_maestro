library(readxl)
ranking10 <- read_excel("KOBIS_연도별박스오피스_2010_일반영화_정제.xlsx")
ranking11 <- read_excel("KOBIS_연도별박스오피스_2011_일반영화_정제.xlsx")
ranking12 <- read_excel("KOBIS_연도별박스오피스_2012_일반영화_정제.xlsx")
ranking13 <- read_excel("KOBIS_연도별박스오피스_2013_일반영화_정제.xlsx")
ranking14 <- read_excel("KOBIS_연도별박스오피스_2014_일반영화_정제.xlsx")
ranking15 <- read_excel("KOBIS_연도별박스오피스_2015_일반영화_정제.xlsx")
ranking16 <- read_excel("KOBIS_연도별박스오피스_2016_일반영화_정제.xlsx")
ranking17 <- read_excel("KOBIS_연도별박스오피스_2017_일반영화_정제.xlsx")
ranking18 <- read_excel("KOBIS_연도별박스오피스_2018_일반영화_정제.xlsx")
ranking19 <- read_excel("KOBIS_연도별박스오피스_2019_일반영화_정제.xlsx")

cor19 <- ranking19[,c(4:7, 15)]
cor10
cor(cor19)


#배급사 점수 부여
company <- read_excel("배급사별_평균관객수.xlsx")

com <- company[,-1]
comp <- as.data.frame(com)

quantile(comp[,2], probs=seq(0.1,1,length=10))
quantile(comp[,2])


comp <- transform(comp,
                  grade = cut(평균관객수,
                              breaks=c(0, quantile(comp[,2], probs=seq(0.1,1,length=10))),
                              include.lowest = TRUE, right = FALSE,
                              labels = c(10,20,30,40,50,60,70,80,90,100)))
comp

install.packages("writexl")
library(writexl)

write_xlsx(comp,path="배급사_평균점수.xlsx")


##배우점수 부여
act <- read_excel("배우별_총관객수.xlsx")

act1 <- act[,-1]
actor <- as.data.frame(act1)

length(quantile(actor[,2], probs=seq(0.02,1,length=50)))

actor <- transform(actor, 
               grade = cut(평균관객수, 
                               breaks=c(0,quantile(actor[,2], probs=seq(0.02,1,length=50))),
                               include.lowest = TRUE, right = FALSE,
                               labels = c(2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,
                                          32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,
                                          62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,
                                          92,94,96,98,100)))

write_xlsx(actor,path="배우_총점수.xlsx")




##
dire <- read_excel("감독별_총관객수.xlsx")

dire1 <- dire[,-1]
director <- as.data.frame(dire1)

length(quantile(director[,2], probs=seq(0.02,1,length=20)))

director <- transform(director, 
                   grade = cut(평균관객수, 
                                   breaks=c(0,quantile(director[,2], probs=seq(0.05,1,length=20))),
                                   include.lowest = TRUE, right = FALSE,
                                   labels = c(5,10,15,20,25,30,35,40,45,50,55,60,
                                              65,70,75,80,85,90,95,100)))
director
write_xlsx(director,path="감독_총점수.xlsx")





library(readxl)
hey <- read_excel("movie_score_re.xlsx")
test <- as.data.frame(hey)


##
str(test)

summary(test)

cor(test)

library(corrplot)

cor_test <- cor(test)
col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))

par(mfrow=c(1,1))
corrplot(cor_test,
         method = "color",
         col = col(200),
         type = "lower",
         order = "hclust",
         addCoef.col = "black",
         tl.col = "black",
         tl.srt = 45,
         diag = F)




##변수선택을 위한 다중선형 회귀분석

movie_lm <- lm(관객수~매출액+스크린수+등급+감독점수+배우점수+상영시간+배급사점수, data=test)
vif(movie_lm)
##매출액, 스크린 수에서 다중공선성 문제가 나타나는데, 다중공선성이 더 큰 매출액을 제외한 후 모형 재설정
summary(movie_lm)


Sㄴmovie_lm <- lm(관객수~스크린수+등급+감독점수+배우점수+상영시간+배급사점수, data=test)
vif(movie_lm)
lm(관객수~스크린수+등급+감독점수+배우점수+상영시간+배급사점수, data=test)
##다중공선성의 문제가 없음 

par(mfrow=c(2,2))
plot(movie_lm)

par(mfrow=c(3,2))
plot(관객수~스크린수+등급+감독점수+배우점수+상영시간+배급사점수, data=test)

summary(movie_lm)



install.packages("car")
library(car)

vif(movie_lm)

movie_1 <- lm(관객수~1,data=test)
movie.backward <- step(movie_lm ,scope=list(lower=movie_1, upper=movie_lm), direction = "backward")
