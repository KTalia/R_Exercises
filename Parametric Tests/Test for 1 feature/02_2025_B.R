x <- c(743, 751, 748, 757, 752, 745, 750, 755, 749, 754, 742, 756, 744, 753, 746)

n<- length(x) # 15

alpha <- 0.05

# H_0: sigma = 2
# H_a: sigma > 2


# C = (Chi_alpha, n-1, +inf)

var_x <- var(x) # 23.80952

dis <- 4 # disperzija na obelezjeto


chi_sq <- ((n-1)*var(x))/dis

b <- qchisq(1-alpha,n-1) # 23.68479

chi_sq < b  # FALSE 

# chi_sq belongs to C
# We reject H0 --> the standard deviation of
# the drink is increased