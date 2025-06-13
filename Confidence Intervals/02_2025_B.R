x <- c(743, 751, 748, 757, 752, 745, 750, 755, 749, 754, 742, 756, 744, 753, 746,  741, 742, 745, 746, 747, 748, 749, 751, 758, 748, 749, 751, 758, 744, 741, 754, 742, 756, 744, 753, 746, 746, 747, 748, 749, 751, 758, 748, 749, 751)

n <- length(x) # 45

alpha <- 0.1

# Decision criteria:
# 1. n>30 (use Z-test)
# 2. dispersion is unknown (use Z-test with s)

x_ <- mean(x) # 749
sd_x <- sd(x) # 4.81475

qnorm(1-alpha/2) # 1.64


z.test(x, sigma.x = sd_x, conf.level=1-alpha)$conf.int
# Result is:  (747.8194, 750.1806)