
# 13.2.1 ポストテストの値を従属変数、プリテストの値を統制変数(共変量)とした、群の効果に関する共分散分析 ---------------------------------------------------------

事前事後 <- read.csv("others/prepost.csv")

事前事後$pre

attach(事前事後)

summary(lm(post~pre+group))
summary(aov(post~pre+group))

summary(aov(post~pre*group))

# 13.2.2 変化量について、t検定によって群の効果を吟味 -------------------------------------------

変化量 <- post  - pre
print(事前事後)

var.test(変化量~group)
t.test(変化量~group, var.equal=TRUE)
