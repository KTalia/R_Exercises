# Simulating
x_norm <- rnorm(n = 100, mean = 30, sd = 5)

# Theoretical probability (P[X <= 20]) 
theoretical.normal <- pnorm(20, mean = 30, sd = 5)

# Empirical probability
empirical.normal <- mean(x_norm <= 20)
