
# Chapter02 ---------------------------------------------------------------

# (1)
a_univ <- c(60, 100, 50, 40, 50, 230, 120, 240, 200, 30)
b_univ <- c(50, 60, 40, 50, 100, 80, 30, 20, 100, 120)

hist(a_univ)
hist(b_univ)

# (2)
mean_a <- mean(a_univ)
sd_a <- sqrt(mean((a_univ - mean_a)^2))

mean_b <- mean(b_univ)
sd_b <- sqrt(mean((b_univ - mean_b)^2))


# (3)
std_a <- (a_univ - mean_a)/sd_a
std_b <- (b_univ - mean_b)/sd_b
print(std_b)
 

# Chapter03 ---------------------------------------------------------------

# (1)
study_time <- c(1, 3, 10, 12, 6, 3, 8, 4, 1, 5)
test_score <- c(20, 40, 100, 80, 50, 50, 70, 50, 10, 60)
plot(study_time, test_score)

# (2)
cor(study_time, test_score)

# (3)
j <- "和食"
w <- "洋食"
likes_food <- c(w, j, j, w, j, w, w, j, w, w, j, w, j, w, j, j, w, w, j, j)

s <- "甘党"
h <- "辛党"
s_or_h <- c(s, h, s, s, h, h, h, h, s, s, s, s, h, h, s, h, h, s, h, h)

table(likes_food, s_or_h)

likes_food_one_hot <- ifelse(likes_food==j, 1, 0)
s_or_h_one_hot <- ifelse(s_or_h==s, 1, 0)

cor(likes_food_one_hot, s_or_h_one_hot)


# chapter04 ---------------------------------------------------------------

# (1)
sample_distribution <- numeric(length=5000) 
for(i in 1:5000){
  sample <- rnorm(n=20, mean=50, sd=10)
  sample_distribution[i] <- mean(sample)
}
hist(sample_distribution, freq=FALSE)
curve(dnorm(x, mean=50, sd=sqrt(100/20)), add=TRUE)

# (2)
n <- 1  
curve(dnorm(x, mean=0, sd=sqrt(1/n)), -3, 3)

  

# chapter05 ---------------------------------------------------------------

# (1)
man_height_list <- c(165, 150, 170, 168, 159, 170, 167, 178, 155, 159,
                     161, 162, 166, 171, 155, 160, 168, 172, 155, 167)

t.test(man_height_list, mu=170)

# (2)
study_time <- c(1, 3, 10, 12, 6, 3, 8, 4, 1, 5)
test_score <- c(20, 40, 100, 80, 50, 50, 70, 50, 10, 60)
cor.test(study_time, test_score)

# (3)
cor.test(study_time, test_score, method='spearman')
cor.test(study_time, test_score, method='kendall')

# (4)
j <- "和食"
w <- "洋食"
likes_food <- c(w, j, j, w, j, w, w, j, w, w, j, w, j, w, j, j, w, w, j, j)
s <- "甘党"
h <- "辛党"
s_or_h <- c(s, h, s, s, h, h, h, h, s, s, s, s, h, h, s, h, h, s, h, h)

chisq.test(table(likes_food, s_or_h), correct=FALSE)

# (5)
na_lang <- c(60, 40, 30, 70, 55)
society <- c(80, 25, 35, 70, 50)

cor.test(na_lang, society)

na_lang_more <- rep(na_lang, 2)
society_more <- rep(society, 2)

cor.test(na_lang_more, society_more)


# chapter06 ---------------------------------------------------------------

# (1)
like_sta_test <- c(6, 10, 6, 10, 11, 6, 11, 7)
dislike_sta_test <- c(5, 3, 5, 9, 3, 3, 9, 5, 8, 7, 7, 9)
var.test(like_sta_test, dislike_sta_test)
t.test(like_sta_test, dislike_sta_test, var.equal=TRUE)

# (2)
psychology_man <- c(13, 14, 7, 12, 10, 6, 8, 15, 4, 14)
psychology_woman <- c(9, 6, 10, 12, 5, 12, 8, 8, 12, 15)

var.test(psychology_man, psychology_woman)
t.test(psychology_man, psychology_woman, var.equal=TRUE)

# (3)
before_program <- c(61, 50, 41, 55, 51, 48, 46, 55, 65, 70)
after_program <- c(59, 48, 33, 54, 47, 52, 38, 50, 64, 63)

t.test(before_program, after_program, paired=TRUE)


# chapter07 ---------------------------------------------------------------

# (1)
low <- c(75, 61, 68, 58, 66, 55, 65, 63)
lit <- c(62, 60, 66, 63, 55, 53, 59, 63)
sci <- c(65, 60, 78, 52, 59, 66, 73, 64)
eng <- c(52, 59, 44, 67, 47, 53, 58, 49)

test <- c(low, lit, sci, eng)
department <- factor(c(rep('low', 8), rep('lit', 8), rep('sci', 8), rep('eng', 8)))

summary(aov(test~department))
TukeyHSD(aov(test~department))

# (2)
lec <- c(51, 66, 70, 75, 73, 62, 55)
pra <- c(47, 54, 55, 39, 60, 62, 56)
tra <- c(55, 37, 47, 60, 62, 53, 50)

test2 <- c(lec, pra, tra)
student <- factor(rep(c("森本", "田中", "稲葉", "瀬木", "高橋", "工藤", "金子"), 3))
lesson <- factor(c(rep("講義", 7), rep("問題", 7), rep("実習", 7)))

summary(aov(test2~lesson+student))

TukeyHSD(aov(test2~lesson+student))
