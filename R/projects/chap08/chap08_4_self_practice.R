# 시간에 따른  psavert(개인 저축률) 변화
ggplot(data = economics, aes(x = date, y = psavert)) + geom_line()
