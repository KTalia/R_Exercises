library('BSDA')

n<- 12
m <-18

x_ <- 4.8
y_ <- 5.3

var_x <- 1.6
var_y <-1.4

alpha <- 0.05

# It is stated that the variances are equal

# H0: mu_x = mu_y
# Ha: mu_x < mu_y

# Test choice:
# n,m <30 and the variances are equal: use T-test


qt(1-alpha,n+m-2,lower.tail = FALSE)

help(t.test)

-0.9045 < qt(1-alpha,n+m-2,lower.tail = FALSE) # FALSE

# t0 doesnt belong to C, we fail to reject the null hypothesis
# it is concluded that the CD uses more energy.

