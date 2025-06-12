x <- c(24, 22, 28, 21, 32, 25, 30, 20, 26, 29, 33, 19)

n <- length(x) # 12

alpha <- 0.05


# H_0: sigma = 4
# H_a: sigma > 4


var<- var(x)
var

sd <- sd(x)
sd