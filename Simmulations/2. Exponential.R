# Simulating
x_exp <- rexp(n = 100, rate = 0.025) # Mean = 1/rate = 40

# Theoretical probability (P[X <= 20]) 
theoretical.exp <- pexp(20, rate = 0.025)

# Empirical probability
empirical.exp <- mean(x_exp <= 20)
