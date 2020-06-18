# ì§€?—­ë³? ?—°? ¹??€ ë¹„ìœ¨
# 1. ë³€?ˆ˜ ê²€?†  ë°? ? „ì²˜ë¦¬
# 1-1. ì§€?—­
# ê²€?† 
class(welfare$code_region)
table(welfare$code_region)

# ? „ì²˜ë¦¬
list_region <- data.frame(code_region = c(1:7),
                          region = c("?„œ?š¸", "?ˆ˜?„ê¶?(?¸ì²?/ê²½ê¸°)", "ë¶€?‚°/ê²½ë‚¨/?š¸?‚°",
                                     "??€êµ?/ê²½ë¶", "??€? „/ì¶©ë‚¨", "ê°•ì›/ì¶©ë¶",
                                     "ê´‘ì£¼/? „?‚¨/? „ë¶?/? œì£¼ë„"))

list_region

welfare_region <- welfare %>% 
  select(c(code_region, ageg)) %>% 
  inner_join(list_region, by = "code_region")

View(welfare_region)
table(is.na(welfare_region$code_region))
table(is.na(welfare_region$region))
# 1-2. ?—°? ¹??€

# 2. ë³€?ˆ˜ ê°? ê´€ê³? ë¶„ì„
# 2-1. ì§€?—­ë³? ?—°? ¹??€ ë¹„ìœ¨?‘œ ë§Œë“¤ê¸?
region_ageg <- welfare_region %>%
  group_by(region, ageg) %>% 
  summarise(n = n()) %>% 
  mutate(tot_group = sum(n)) %>% 
  mutate(pct = round(n / tot_group * 100, 2))

region_ageg 

# 2-2. ê·¸ë˜?”„ ë§Œë“¤ê¸?
#ì§€?—­ë³? ?¸êµ
ggplot(data = region_ageg, aes(x = reorder(region, n), y = n))+
  geom_col() +
  coord_flip()

# ì§€?—­ë³? ?—°? ¹??€ë³? ê·¸ë˜?”„
ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip()

