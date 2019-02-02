
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


