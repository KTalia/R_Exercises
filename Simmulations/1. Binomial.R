x <- rbinom(100, size = 1000, prob = 0.2)

# Theoretical probabilities
p_leq_210 <- pbinom(210, 1000, 0.2)           # P(X <= 210)
p_lt_210  <- pbinom(209, 1000, 0.2)           # P(X < 210)
p_geq_210 <- 1 - pbinom(209, 1000, 0.2)       # P(X >= 210)
p_gt_210  <- 1 - pbinom(210, 1000, 0.2)       # P(X > 210)

# Empirical probabilities from sample
empirical_geq_210 <- mean(x >= 210)
empirical_leq_210 <- mean(x <= 210)
