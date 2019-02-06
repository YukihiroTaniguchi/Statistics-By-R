
# 12.2.1 Rで分析してみよう --------------------------------------------------------

dbinom(17, 20, 0.5)

勝利数 <- 0:20

dbinom(勝利数, 20, 0.5)

plot(勝利数, dbinom(勝利数, 20, 0.5), type="h")

pbinom(勝利数, 20, 0.5)

round(1.23456, digit=4)

round(pbinom(勝利数, 20, 0.5), 4)

pbinom(16, 20, 0.5)
pbinom(16, 20, 0.5, lower.tail=FALSE)
1 - pbinom(16, 20, 0.5)


pbinom(16, 20, 0.5) + pbinom(16, 20, 0.5, lower.tail=FALSE)

的中回数 <- 0:10
round(pbinom(的中回数, 10, 1/3), 4)

pbinom(6, 10, 1/3)
