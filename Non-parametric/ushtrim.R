# Normal Distribution

x <- rnorm(100, mean =30, sd = 2)


# Theoretical probabilities
dnorm(20,30,2) # X == 20
pnorm(20,30,2) # X <= 20
1- pnorm(19,30,2) # X >= 20
pnorm(19,30,2) # X < 20
1 - pnorm(20,30,2) # X > 20

# Empirical Probabilities
# X == 20
# X <= 20
# X >= 20
# X < 20
# X > 20