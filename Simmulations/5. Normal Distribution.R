# Normal Distribution

x <- rnorm(100, mean =30, sd = 2)

# For a continuous normal distribution,
# P(X≥20) is the same as 𝑃(𝑋>20)

# Theoretical probabilities
pnorm(20,30,2) # X <= 20 or X < 20
1- pnorm(20,30,2) # X >= 20 or X > 20

# Empirical Probabilities

length(x[x<=20])/length(x) # X <= 20 or X < 20

length(x[x>=20])/length(x) # X >= 20 or X > 20

# Approximating P(19 < X < 20)
p_interval <- pnorm(20, mean, sd) - pnorm(19, mean, sd)