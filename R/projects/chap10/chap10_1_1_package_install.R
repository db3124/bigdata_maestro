# 패키기 설치: 코드를 통해 설치: 오류를 파악하기 위해
# 어떤 패키지가 다른 패키지에 의존하고 있다. 의존하고 있으면 같이 설치하라 = T
install.packages("rJava", dependencies = T)
library(rJava)

install.packages("memoise", dependencies = T)
library(memoise)

# Rtools를 다운 받아야 설치 가능. 더이상 CRAN에서 직접 다운로드 불가능
# install.packages("KoNLP", dependencies = T)
install.packages("https://cran.r-project.org/src/contrib/Archive/KoNLP/KoNLP_0.80.2.tar.gz", 
                 repos = NULL, # 내가 쓴 경로에서 다운로드 받아라.
                 type = "source",
                 INSTALL_opts = c("--no-lock"))

install.packages(c('stringr','hash', 'tau', 'Sejong', 'RSQLite', 'devtools'),
                 dependencies = T)

# scala-library-2.11.8.jar 다운로드
# https://mvnrepository.com/artifact/org.scala-lang/scala-library/2.11.8
# ->C:\BigData\programs\R-3.6.3\library\KoNLP\java 에 저장

library(KoNLP)

library(dplyr)

library(ggplot2)
