
# 19.3 プログラムの作成 -----------------------------------------------------------

群A <- rnorm(n=10)
群B <- rnorm(n=10)
群C <- rnorm(n=10)

t.test(群A, 群B, var.equal=TRUE)
検定結果 <- t.test(群A, 群B, var.equal=TRUE)
length(検定結果)
検定結果[1]
検定結果[2]
検定結果[3]

検定結果$p.value

検定1 <- t.test(群A, 群B, var.equal=TRUE)
検定2 <- t.test(群B, 群C, var.equal=TRUE)
検定3 <- t.test(群C, 群A, var.equal=TRUE)

検定1$p.value
検定2$p.value
検定3$p.value
ifelse(検定1$p.value<0.05 | 検定2$p.value<0.05 | 検定3$p.value<0.05, '誤り', '正しい')

第一種の誤り <- 0 #第一種の誤りの回数を0に初期化する
for(i in 1:10) {
 群A <- rnorm(n=10)
 群B <- rnorm(n=10)
 群C <- rnorm(n=10)

 検定結果 <- t.test(群A, 群B, var.equal=TRUE)
 検定結果[1]
 検定結果[2]
 検定結果[3]

 検定1 <- t.test(群A, 群B, var.equal=TRUE)
 検定2 <- t.test(群B, 群C, var.equal=TRUE)
 検定3 <- t.test(群C, 群A, var.equal=TRUE)

 #検定1$p.value
 #検定2$p.value
 #検定3$p.value
 ifelse(検定1$p.value<0.05 | 検定2$p.value<0.05 | 検定3$p.value<0.05, 1, 0) 
}
