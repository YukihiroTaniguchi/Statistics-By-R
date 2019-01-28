A <- rnorm(50)
B <- rnorm(50)
C <- A*0.5+sqrt(0.75)*B
自尊感情 <- 10*A+50
ソーシャルスキル <- 10*C+50

plot(自尊感情, ソーシャルスキル, xlim=c(0, 100), ylim=c(0, 100))
points(50, 50, cex=45)
legend(50, 10, legend="抽出された標本に含まれるデータ", pch=1)
legend(10, 100, legend="母集団(円の中全体にデータが散らばっていて相関はゼロ)")


# 5.3 標準正規分布を用いた検定(1つの平均値の検定・母分散sd^2が既知)  ----------------------------------

心理学テスト <- c(13, 14,  7, 12, 10,  6, 8, 15,  4, 14, 
                   9,  6, 10, 12,  5, 12, 8,  8, 12, 15)

Z分子 <- mean(心理学テスト) -12

Z分母 <- sqrt(10/length(心理学テスト))

Z統計量 <- Z分子/Z分母

print(Z統計量)

qnorm(0.025)
qnorm(0.975)

qnorm(0.025, lower.tail=FALSE)

pnorm(-2.828427) #下側確率Prob(Z<=-2.828427)
pnorm(2.828427, lower.tail=FALSE) #上側確率Prob(Z>2.828427)を計算

2*pnorm(2.828427, lower.tail=FALSE)



# 5.4 t分布を用いた検定(1つの平均値の検定・母分散sd^2が未知 ---------------------------------------

t分子 <- mean(心理学テスト) - 12 #検定統計量の分子を計算

t分母 <- sqrt(var(心理学テスト)/length(心理学テスト))

t統計量 <- t分子/t分母
print(t統計量)

qt(0.025, 19)
qt(0.975, 19)
qt(0.025, 19, lower.tail=FALSE)

curve(dt(x, 19), -3, 3)
abline(v=qt(0.025, 19))
abline(v=qt(0.975, 19))

pt(-2.616648, 19) #自由度19のt分布で、下側確率Prob(t<=-2.616648)を計算
pt(2.616648, 19, lower.tail=FALSE) #自由度19のt分布で、上側確率Prob(t>2.616648)
2*pt(2.616648, 19, lower.tail=FALSE)

t.test(心理学テスト, mu=12)


# 5.5 相関係数の検定(無相関検定) -------------------------------------------------------

統計テスト1 <- c(6, 10, 6, 10, 5, 3, 5, 9, 3, 3,
                 11, 6, 11, 9, 7, 5, 8, 7, 7, 9)

統計テスト2 <- c(10, 13, 8, 15, 8, 6, 9, 10, 7, 3,
                 18, 14, 18, 11, 12, 5, 7, 12, 7, 7)

標本相関 <- cor(統計テスト1, 統計テスト2)

サンプルサイズ <- length(統計テスト1)
t分子 <- 標本相関*sqrt(サンプルサイズ - 2)
t分母 <- sqrt(1 - 標本相関^2)
t統計量 <- t分子/t分母
print(t統計量)

qt(0.025, 18) #自由度18のt分布で下側確率0.025となるtの値を求める
qt(0.025, 18, lower.tail=FALSE)

curve(dt(x, 18), -3, 3)
abline(v=qt(0.025, 18))
abline(v=qt(0.025, 18, lower.tail=FALSE))

pt(4.805707, 18, lower.tail=FALSE)
                      #自由度18のt分布で、上側確率Prob(t>4.805707)を計算

2*pt(4.805707, 18, lower.tail=FALSE)

cor.test(統計テスト1, 統計テスト2)


# 5.6 独立性の検定(カイ二乗検定) ------------------------------------------------------

table(数学, 統計)

curve(dchisq(x, 2), 0, 20)
curve(dchisq(x, 1), 0, 20, add=TRUE)
curve(dchisq(x, 4), 0, 20, add=TRUE)
curve(dchisq(x, 8), 0, 20, add=TRUE)

curve(dchisq(x, 50), 0, 20, add=TRUE)

期待度数イチイチ <- (12*14)/20
期待度数イチニ <- (8*14)/20
期待度数ニイチ <- (12*6)/20
期待度数二二 <- (8*6)/20
期待度数 <- c(期待度数イチイチ, 期待度数ニイチ, 期待度数イチニ, 期待度数二二)

観測度数 <- c(10, 2, 4, 4)

カイ2乗要素 <- (観測度数 - 期待度数)^2/期待度数
print(カイ2乗要素)

カイ2乗 <- sum(カイ2乗要素)
print(カイ2乗)

qchisq(0.95, 1) #自由度1のカイ2乗分布で下側確率0.95となるx^2の値を求める
qchisq(0.05, 1, lower.tail=FALSE)

curve(dchisq(x, 1),0, 6)
abline(v=qchisq(0.05, 1, lower.tail=FALSE))

pchisq(2.539683, 1, lower.tail=FALSE)
      #自由度1のカイ2乗分布の上側確率Prob(x2>2.539683)

1-pchisq(2.539683, 1)
  #自由度1のカイ2乗分布で、1-(x2<2.539683)により、
  #上側確率Prob(x2>2.539683)を計算

クロス集計表 <- table(数学, 統計)
chisq.test(クロス集計表, correct=FALSE)


# 5.7 サンプルサイズの検定結果への影響について ------------------------------------------------

qchisq(0.05, 1, lower.tail=FALSE)

履修A <- matrix(c(16, 12, 4, 8), 2, 2)

rownames(履修A) <- c("文系", "理系")
colnames(履修A) <- c("履修した", "履修しない")

chisq.test(履修A, correct=FALSE)


履修B <- matrix(c(160, 120, 40, 80), 2, 2)
rownames(履修B) <- c("文系", "理系")
colnames(履修B) <- c("履修した", "履修しない")

chisq.test(履修B, correct=FALSE)


# 練習問題 --------------------------------------------------------------------

(1)
man_height_list <- c(165, 150, 170, 168, 159, 170, 167, 178, 155, 159,
                     161, 162, 166, 171, 155, 160, 168, 172, 155, 167)

t.test(man_height_list, mu=170)

(2)
practice_time <- c(1, 3, 10, 12, 6, 3, 8, 4, 1, 5)
routine_exam_score <- c(20, 40, 100, 80, 50, 50, 70, 50, 10, 60)

cor.test(practice_time, routine_exam_score)

(3)
cor.test(practice_time, routine_exam_score, method="spearman")
cor.test(practice_time, routine_exam_score, method="kendall")

(4)
weston_or_japanese <- c("洋食", "和食", "和食", "洋食", "和食", "洋食", "洋食", "和食", "洋食", "洋食", 
                        "和食", "洋食", "和食", "洋食", "和食", "和食", "洋食", "洋食", "和食", "和食")

sweet_or_hot <- c("甘党", "辛党", "甘党", "甘党", "辛党", "辛党", "辛党", "辛党", "甘党", "甘党",
                  "甘党", "甘党", "辛党", "辛党", "甘党", "辛党", "辛党", "甘党", "辛党", "辛党")

food_table <- table(weston_or_japanese, sweet_or_hot)
chisq.test(food_table, correct=FALSE)

(5-1)
j <- c(60, 40, 30, 70, 55)
s <- c(80, 25, 35, 70, 50)
cor.test(j, s)

(5-2)
j2 <- rep(c(60, 40, 30, 70, 55),2)
s2 <- rep(c(80, 25, 35, 70, 50),2)
cor.test(j2, s2)
