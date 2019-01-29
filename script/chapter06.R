
# 6.2 独立な2郡のt検定 ----------------------------------------------------------------

統計1男 <- c(6, 10, 6, 10, 5, 3, 5, 9, 3, 3)
統計1女 <- c(11, 6, 11, 9, 7, 5, 8, 7, 7, 9)

プール標準偏差 <- sqrt(((length(統計1男) - 1)*var(統計1男) + (length(統計1女) - 1)*var(統計1女))/(length(統計1男) + length(統計1女) -2))

t分母 <- プール標準偏差 * sqrt(1/length(統計1男) + 1/length(統計1女))

t分子 <- mean(統計1男) - mean(統計1女)

t統計量 <- t分子/t分母
print(t統計量)

qt(0.025, length(統計1男) + length(統計1女) -2)
qt(0.025, length(統計1男) + length(統計1女) -2, lower.tail=FALSE)

2*pt(t統計量, length(統計1男) + length(統計1女) -2)

t.test(統計1男, 統計1女, var.equal=TRUE)


# 6.3.1 分散の等質性の検定 ---------------------------------------------------------

クラスA <- c(54, 55, 52, 48, 50, 38, 41, 40, 53, 52)
クラスB <- c(67, 63, 50, 60, 61, 69, 43, 58, 36, 29)

var.test(クラスA, クラスB)


# 6.3.2 Welchの検定 ----------------------------------------------------------

t.test(クラスA, クラスB, var.equal=FALSE)


# 6.4 対応のあるt検定 ------------------------------------------------------------

統計テスト1 <- c(6, 10, 6, 10, 5, 3, 5, 9, 3, 3, 11, 6, 11, 9, 7, 5, 8, 7, 7, 9)
統計テスト2 <- c(10, 13, 8, 15, 8, 6, 9, 10, 7, 3,18, 14, 18, 11, 12, 5, 7, 12, 7, 7)

変化量 <- 統計テスト2 - 統計テスト1

mean(統計テスト1)

mean(統計テスト2)

mean(変化量)

分母t <- sd(変化量)/sqrt(length(変化量))

分子t <- mean(変化量)

t統計量 <- 分子t / 分母t
print(t統計量)

qt(0.025, length(変化量) -1, lower.tail=FALSE)

t.test(変化量)

t.test(統計テスト1, 統計テスト2, paired=TRUE)

var.test(統計テスト1, 統計テスト2)

t.test(統計テスト1, 統計テスト2, var.equal=FALSE)


# 練習問題 --------------------------------------------------------------------

(1)
statistics_test <- c(6, 10, 6, 10, 5, 3, 5, 9, 3, 3, 
                     11, 6, 11, 9, 7, 5, 8, 7, 7, 9)
likes_statistics <- c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, 
                      TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE)

like_sta_test <- c(6, 10, 6, 10, 11, 6, 11, 7)
dislike_sta_test <- c(5, 3, 5, 9, 3, 3, 9, 5, 8, 7, 7, 9)

var.test(like_sta_test, dislike_sta_test)
t.test(like_sta_test, dislike_sta_test, var.equal=TRUE)

psychology_man <- c(13, 14, 7, 12, 10, 6, 8, 15, 4, 14)
psychology_woman <- c(9, 6, 10, 12, 5, 12, 8, 8, 12, 15)

var.test(psychology_man, psychology_woman)
t.test(psychology_man, psychology_woman, var.equal=TRUE)

before_program <- c(61, 50, 41, 55, 51, 48, 46, 55, 65, 70)
after_program <- c(59, 48, 33, 54, 47, 52, 38, 50, 64, 63)

t.test(before_program, after_program, paired=TRUE)
