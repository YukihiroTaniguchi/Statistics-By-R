
# 8.2.1 ベクトルを作るための関数 ------------------------------------------------------------

x <- 10
y <- c(1, 2, 4)

veca <- c(1, 2, 3, 4, 5)
veca2 <- 1:5
veca3 <- 5:10
veca4 <- 10:1
veca5 <- -5:5
veca6 <- seq(1, 5, 1)

vecb <- seq(2, 10, 2)

vecc <- rep(1, 8)

veca
vecb

veca + vecb
veca - vecb
veca * vecb
veca / vecb

veca %*% vecb

veca * 5

vecd <- c(2, 4)

veca + vecd
veca * vecd

vece <- 10:20

vece[2]
vece[3:7]

vecf <- vece[c(2, 4, 6, 8)]
print(vecf)

vecg <- vece[c(10, 1, 8, 6)]


# 8.3 行列 ------------------------------------------------------------------

matrix(1:12, nrow=3, ncol=4)
matrix(1:12, 3, 4)
matrix(1:12, 3)
matrix(1:12, ncol=4)
matrix(1:12, ncol=4, nrow=3)
matrix(1:12, 3, 4, byrow=TRUE)

cbind(veca, vecb)
rbind(veca, vecb)

mata <- matrix(1:6, nrow=2, ncol=3)

rownames(mata) <- c("row1", "row2")
colnames(mata) <- c("col1", "col2", "col3")


# 8.3.1 行列の基本演算 -----------------------------------------------------------

matb <- matrix(3:8, nrow=2, ncol=3)

mata + matb
mata - matb
mata * matb
mata / matb

matbt <- t(matb)
t(matbt)

matbt%*%mata

mata%*%matbt

mata%*%matbt


# 8.3.2 特別な行列 -------------------------------------------------------------

matc <- matrix(1:9, 3, 3)
print(matc)

diag(c(1, 2, 3))

diag(3)

matc%*%diag(3)

matrix(1:16, 4)%*%diag(4)


# 8.3.3 行列の要素を取り出す --------------------------------------------------------

matd <- matrix(1:25, 5, 5)
matd[, 2]
matd[2,]
matd[, c(3, 5)]
matd[c(2, 4),]
matd[2, 4]


# 8.3.4 行列を使ってデータを扱う ----------------------------------------------------

A <- c(15, 9, 18, 14, 18)
B <- c(13, 8, 8, 12, 7)
C <- c(10, 6, 11, 7, 12)
D <- c(10, 7, 3, 5, 7)
全データ <- cbind(A, B, C, D)
print(全データ)

mean(A)
mean(全データ[, 1])

print(全データ)

全データ2 <- matrix(c(15, 9, 18, 14, 18, 13, 8, 8, 12, 7, 10, 6, 11, 7, 12, 10, 7, 3, 5, 7), 5, 4)
全データ2[,3]

B平均 <- mean(全データ[, 2])


# 8.3.5 行列の演算(応用) ---------------------------------------------------------

mate <- matrix(c(1, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 1), nrow=3, ncol=3)

det(mate)

matei <- solve(mate)
matei

mate%*%matei

eigen(mate)
