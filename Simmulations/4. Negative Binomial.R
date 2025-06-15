# Negative Binomial distribution
# Number of failures until we reach 4th success with p = 0.5
# 2 nr of failures

x <- rnbinom(100, 4, 0.5)

# Theoretical probabilities
dnbinom(2, size = 4, prob = 0.5)     # P(X == 2)    
pnbinom(2, size = 4, prob = 0.5)     # P(X <= 2)
1 - pnbinom(2, size = 4, prob = 0.5) # P(X > 2)
pnbinom(1, size = 4, prob = 0.5)     # P(X < 2)
1 - pnbinom(1, size = 4, prob = 0.5) # P(X >= 2)

# Empirical probabilities
length(x[x == 2]) / length(x)  # P(X == 2)   
length(x[x < 2]) / length(x)   # P(X < 2)
length(x[x <= 2]) / length(x)  # P(X <= 2)
length(x[x > 2]) / length(x)   # P(X > 2)
length(x[x >= 2]) / length(x)   # P(X > 2)