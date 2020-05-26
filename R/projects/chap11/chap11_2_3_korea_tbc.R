?tbc
# kormaps2014에 있는 데이터셋 tbc
str(changeCode(kormaps2014::tbc))

# 한글 인코딩 방식 바꾸기
my_tbc <- kormaps2014::tbc

my_tbc$name <- iconv(my_tbc$name, "UTF-8", "CP949")

View(my_tbc)

ggChoropleth(data = my_tbc,
             aes(fill = NewPts,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T) # 각 지역의 첫번째 행이 표시됨. -> 틀린 것

# 각 지역의 합을 표시====================================
my_tbc2 <- my_tbc %>% 
  group_by(code, name) %>% 
  summarise(sum_pts = sum(NewPts))

View(my_tbc2)

# sum_pts값이 NA인 "세종특별자치시"의 값 바꾸기1
my_tbc2$sum_pts <- ifelse(is.na(my_tbc2$sum_pts), 6789, my_tbc2$sum_pts)

# sum_pts값이 NA인 "세종특별자치시"의 값 바꾸기2
# 행마다 검사해야 하기 때문에 권장하는 방식 아님.
my_tbc2$sum_pts2 <- ifelse(my_tbc2$name == "세종특별자치시",
                           6789, my_tbc2$sum_pts)

# sum_pts값이 NA인 "세종특별자치시"의 값 바꾸기3
my_tbc2[my_tbc2$name == "세종특별자치시", "sum_pts"] <- 6789
View(my_tbc2)

# sum_pts값이 NA인 "세종특별자치시"의 값 바꾸기4
# 서로 다른 데이터프레임끼리. 서로 종속되는 두 속성이 아닌 경우?
# emp의 empno/sal/deptno, dept의 deptno/loc
# -> loc가 서울인 부서의 사람들의 sal을 10% 인상하라.
sejong_code <- my_tbc2 %>% 
  filter(name == "세종특별자치시") %>% 
  select(code)

# 형변환
class(sejong_code)

sejong_code <- as.double(sejong_code)

my_tbc2[my_tbc2$code == sejong_code, "sum_pts"] <- 6789

# ==================================================
ggChoropleth(data = my_tbc2,
             aes(fill = sum_pts,
                 map_id = code,
                 tooltip = name),
             map = kormap1,
             interactive = T)
