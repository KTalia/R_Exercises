# PART 1: CI

n <- 12

x_ <- 72

sigma <- 25

alpha <- 0.01

# Decision criteria:
# n is small
# we have s, not the standard deviation
# t test with s


lower<- qt(alpha/2, n-1)  #  -3.105807
upper <- qt(1-alpha/2, n-1)# 3.105807

# CI = (49.5844, 94.4156)

# PART 2: Parametric test
# H_0: mu = 70
# H_a: mu < 70

t0 <- 0.277

# C = (-inf, t_alpha,n-1)

qt(alpha,n-1) # -2.718079

# C = (-inf, -2.718079)

0.277< -2.718079 # FALSE

# t0 doesnt belong in C. The null hypothesis is not rejected,
# i.e. the nr of points is 70

