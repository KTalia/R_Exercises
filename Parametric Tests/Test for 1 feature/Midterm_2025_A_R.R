x<- c(15, 20, 16, 20, 21, 22, 18, 17, 21, 21)

n <- length(x) # 10

alpha <- 0.05

# H_0: mu =25
# H_a: mu < 25

# Test choice: n<30 and the variance is unknown
# use t-test

sd_x <- sd(x)

sd_x  # 2.424413

x_ <- mean(x) # 19.1

t0<- ((19.01- 25)/sd_x)*sqrt(n) # -7.813043

# C = (-inf, -1.833113)

qt(alpha,n-1) # -1.833113 

-7.813043 < -1.833113 # TRUE

# H0 is rejected. sleeping time is decreased.


# T-test


help(t.test)

res <- t.test(x, alternative="less", mu=25, conf.level = 0.95)
res

alpha < res$p.value # FALSE

# H0 is rejected, i.e. the sleeping time is decreased.

