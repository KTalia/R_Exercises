x_nbinom <- rnbinom(n = 100, size = 5, prob = 0.5)

# Theoretical probability (P[X <= 20]) 
theoretical.nbinom <- pnbinom(20, size = 5, prob = 0.5)

# Empirical probability
empirical.nbinom <- mean(x_nbinom <= 20)
