# Simulating
x_norm <- rnorm(n = 100, mean = 30, sd = 5)

# Theoretical probability (P[X <= 20]) 
theoretical.normal <- pnorm(20, mean = 30, sd = 5)

# X >=20
gr_eq_20 <- 1- pnorm(20, mean = 30, sd = 5) 


# Empirical probability
empirical.normal <- mean(x_norm <= 20)
empirical.normal <- length(x_norm[x_norm <= 210])/length(x_norm)
