# Q1 데이터 프레임 생성
goods <- c("사과", "딸기", "수박")
price <- c(1800, 1500, 3000)
sales_volume <- c(24, 38, 13)

df_sales <- data.frame(goods, price, sales_volume)
df_sales

# Q2 가격 평균, 판매량 평균
mean(df_sales$price)
mean(df_sales$sales_volume)