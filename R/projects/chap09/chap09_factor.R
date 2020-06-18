char_vec <- c("one", "two", "three", "four")
levels(char_vec)

char_fac <- factor(c("one", "two", "three", "four"))
char_fac

char_fac2 <- factor(c("one", "two", "three", "four"),
                   level = c("one", "two", "three", "four"))
char_fac2