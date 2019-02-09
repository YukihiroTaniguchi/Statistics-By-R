
# 15.1 回帰分析とは -------------------------------------------------------------

重回帰CSV <- read.csv("others/chap15data.csv")
重回帰データ <- as.matrix(重回帰CSV)
attach(重回帰CSV)


# 15.2 Rで分析してみよう ----------------------------------------------------------

lm(daughter~father+mother)

重回帰結果 <- lm(daughter~father+mother)
summary(重回帰結果)

coef(重回帰結果)[2:3] * sd(重回帰データ[, 2:3]) / sd(重回帰データ[,1])

単回帰結果 <- update(重回帰結果, .~. -mother)

summary(単回帰結果)
summary(lm(daughter~father))
plot(father, daughter)
abline(単回帰結果)


set.seed(1234)
切片 <- 102.385888
父係数 <- 0.316514
母係数 <- 0.021370
父 <- rnorm(n=19, mean=166.84211, sd=5.90916)
母 <- rnorm(n=19, mean=155.94737, sd=4.63649)
残差 <- rnorm(n=19, mean=0, sd=2.15664)
娘 <- 切片+父係数*父+母係数*母+残差
重回帰データ <- cbind(娘, 父, 母)
print(重回帰データ)

