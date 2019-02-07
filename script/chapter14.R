
# 14.2.1 パッケージpsyを利用する ----------------------------------------------------

library(psy)
data(expsy)
expsy

expsy2 <- expsy[, 1:10]
print(expsy2)


# 14.2.2 逆転項目の処理 ----------------------------------------------------------

expsy2$it2r <- 4 - expsy2$it2

expsy3 <- expsy2[, c(1, 11, 3:10)]
expsy3

尺度得点 <- rowSums(expsy3)
print(尺度得点)

expsy4 <- cbind(expsy3, 尺度得点)
print(expsy4)

cronbach(expsy4[, 1:10])

