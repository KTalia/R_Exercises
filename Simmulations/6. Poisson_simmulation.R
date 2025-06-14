# Simmulate R
x <- rpois(100,30)

# Theoretical probability of X<=20
theoretical.prob <-  ppois(20, lambda = 30)
theoretical.prob

#Theoretical probability of X=20
theoretical.equal20 <- dpois(20, lambda = 30)
theoretical.equal20

# Theoretical probability of X >=20
theoretical.geq20 <- 1 - ppois(20, lambda = 30)
theoretical.geq20

# give me all the elements in x that are less than or equal to 20.
# <=
empirical.prob <- length(x[x <= 20]) / length(x)
empirical.prob


# Empirical probability for X >= 20
empirical.prob <- length(x[x >= 20]) / length(x)
empirical.prob

# Quartiles
quartiles

# Quantiles

quantile(x)
quartiles <- quantile(x, probs = c(0.25, 0.5, 0.75))
quartiles <- quantile(x, probs = c(0.25, 0.5, 0.75))

quantile(x, probs = c(0.1, 0.22))

quantile(x, probs = c(0.25, 0.75))

# Get the 20th percentile:
quantile(x, probs = 0.20)

summary(x)