
# Rで分析してみよう ---------------------------------------------------------------

脳データ <- read.csv("others/animaldat.csv")

print(脳データ)

plot(脳データ$Body_weight, 脳データ$Brain_weight)

cor(脳データ$Body_weight, 脳データ$Brain_weight)

条件1 <- 脳データ$Body_weight < 80000
脳データ2 <- 脳データ[条件1,]
print(脳データ2)

plot(脳データ2$Body_weight, 脳データ2$Brain_weight)

cor(脳データ2$Body_weight, 脳データ2$Brain_weight)

条件2 <- 脳データ$Body_weight < 2000
脳データ3 <- 脳データ[条件2, ]
plot(脳データ3$Body_weight, 脳データ3$Brain_weight)
cor(脳データ3$Body_weight, 脳データ3$Brain_weight)

条件3 <- (脳データ$Body_weight < 2000) & (脳データ$Brain_weight < 1000)
脳データ4 <- 脳データ[条件3, ]
plot(脳データ4$Body_weight, 脳データ4$Brain_weight)
cor(脳データ4$Body_weight, 脳データ4$Brain_weight)
