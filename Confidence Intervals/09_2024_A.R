# PART 1: FIND CI

n <- 10

x_ <- 65

s <- 25

alpha <- 0.05

# Test decision criteria:
# 1. n is small
# 2. the variance is unknown
# --> use t-test with s



sqrt(10) # 3.162278

  # 7.905693

lower <- qt(alpha/2, n-1) # -2.262157
upper <- qt(1-alpha/2, n-1) # 2.262157


65 + (2.262157*(s/sqrt(n)))
65 - (2.262157*(s/sqrt(n)))

# CI = (47.11608, 82.88392)




# PART 2: Parametric test

# H_0: mu = 69
# H_a: mu < 69

# Test decision criteria:
# 1. n is small
# 2. the variance is unknown
# --> use t-test

# C = (-inf, t_alpha,n-1)

t0 <- ((65-69)/25)*sqrt(n) # - 0.5059644

qt(alpha, n-1)  # - 1.833113

# C = (-inf, - 1.833113)

# - 0.5059644 < - 1.833113 # FALSE
# t0 doesnt belong to C. The null hypothesis isnt rejected
# i.e. the expected nr of points is 69


