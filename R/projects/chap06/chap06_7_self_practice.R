# mpg 데이터 분석
# type = c("CNG", "diesel", "ethanol E85", "premium", "regular")
fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22),
                   stringsAsFactors = F)
fuel

# Q1
View(head(mpg, 10))
mpg_new <- inner_join(mpg, fuel, by = "fl")
mpg_new

# Q2
mpg_new %>%
  select(model, fl, price_fl) %>% 
  head(5)
