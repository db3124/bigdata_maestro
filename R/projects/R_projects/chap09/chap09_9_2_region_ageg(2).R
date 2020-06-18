# ?…¸?…„ì¸? ë¹„ìœ¨?´ ?†’??€ ?ˆœ?„œ??€ë¡? ë§‰ë?€ ? •?
list_older_old <- region_ageg %>% 
  filter(ageg == "the older") %>% 
  arrange(pct)

list_older_old

order <- list_older_old$region
order
class(order)

ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip() +
  scale_x_discrete(limits = order)

# ===========================================================
# ?—°? ¹??€ ?ˆœ?œ¼ë¡? ë§‰ë?€ ?ƒ‰ ?‚˜?—´?•˜ê¸?
class(region_ageg$ageg)

# ë²¡í„°?˜• ë¬¸ì?—´?´ê¸? ?•Œë¬¸ì— level?´ ?—†?Œ
levels(region_ageg$ageg)

# ? ˆë²¨ì„ ë§Œë“¤ê¸? ?œ„?•´ ?Œ©?„°?˜•?œ¼ë¡? ë°”ê¿ˆ
region_ageg$ageg <- factor(region_ageg$ageg,
                           level = c("the older", "fifties",
                                     "forties", "thirties", "twenties"))
# ? ˆë²? ?ˆœ?„œë¥? ì§€? •?•´ì¤?. ì§€? •?•˜ì§€ ?•Š?œ¼ë©? ë¬¸ì?—´?˜ ?¬ê¸°ë?€ë¡? ??™ ?„¤? •?¨.

class(region_ageg$ageg)
levels(region_ageg$ageg)

# ê·¸ë˜?”„ ê·¸ë¦¬ê¸?
ggplot(data = region_ageg, aes(x = region, y = pct, fill = ageg)) +
  geom_col() +
  coord_flip() +
  scale_x_discrete(limits = order)







