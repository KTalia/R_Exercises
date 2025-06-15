# Exponential distribution

x <- rexp(100, rate = 0.025)

# Theoretical probabilities
pexp(20, rate = 0.025) # X <= 20 or X < 20
1 - pexp(20, rate = 0.025) # X >= 20 or X > 20

# Empirical probabilities
length(x[x<=20])/length(x) # X <= 20 or X < 20
length(x[x>=20])/length(x) # X >= 20 or X > 20


# Interval 15 <= X <= 20
pexp(20,rate=0.025) - pexp(15, rate = 0.025)