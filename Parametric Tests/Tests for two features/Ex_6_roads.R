library('BSDA')

x <- c(150, 170, 210, 150, 197, 200, 170, 211, 192, 162, 167, 94, 210, 160, 190, 174, 93, 200, 170)
y<- c(93, 143, 176, 204, 200, 170, 155, 120, 180, 130, 140, 140, 50)

alpha<-0.05

n <- length(x)  # n = 19
m <- length(y)  # m = 13

x_ <- mean(x)   # x_ = 172.1053
y_ <-mean(y)    # y_ = 146.2308

var_x <- var(x) # var_x = 1161.322
var_y <- var(y) # var_y = 1835.859

# PART 1: Check if the variance is equal

f0 <- var_x/var_y # f0 = 0.6325


upper <- qf(1-alpha/2, df1=n-1, df2=m-1) # upper=3.108106
lower <- qf(alpha/2, df1=n-1, df2=m-1) # lower = 0.3611567

# C= (0,0.3611567) U (3.108106, +inf)
# f0 does not belong in C. We don't reject the
# null hypothesis i.e. the variances are equal.

# Var test:

res<- var.test(x, y, alternative = "two.sided", conf.level = 0.95) 
res$p.value # 0.3685342

alpha < res$p.value # TRUE


# PART 2: 

# H0: mu_x = mu_y
# Ha: mu_x > mu_y


# Test choice:
# n,m < 30 and the variances are equal, so use T-test

# Find the value by hand
df<-n+m-2
qt(0.95, df)

result <- t.test(x, y, alternative = "greater", var.equal = TRUE, conf.level=0.05)

alpha < result$p.value  # FALSE

# t0 belongs in C, so we reject the null hypothesis,
# i.e. they were right with a risk of 5% 

