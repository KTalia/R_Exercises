x <- c(24, 22, 28, 21, 32, 25, 30, 20, 26, 29, 33, 19)

n <- length(x) # 12

alpha <- 0.05


# H_0: sigma = 4
# H_a: sigma > 4

var_x<- var(x) # S^2 = 22.20455

dis <- 16  # sigma^2 = 16

chi_sq <- ((n-1)*var_x)/dis # 15.26562

b <- qchisq(1-alpha, n-1) # 19.67514

# C = (19.67514, +inf)
chi_sq > b  # FALSE We reject H0 i.e. Sigma did not increase

