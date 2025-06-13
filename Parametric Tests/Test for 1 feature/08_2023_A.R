x<- c(1.19,   1.17,   1.19,   1.16,   1.18,   1.17,   1.16,   1.19)

n <- length(x) # 8

alpha <- 0.05

var <- 0.0016

sd<- sqrt(var) # sigma = 0.04

x_<- mean(x) # 1.17625


# H_0: mu = 1.15
# H_a: mu > 1.15


# Test choice:
# n<30 but sigma is known --> z-test

qf(alpha/2,12,11)
qf(alpha/2,11,12)