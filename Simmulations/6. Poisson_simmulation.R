# Simmulate R
x <- rpois(100,30)

# Theoretical probabilities
theoretical.prob <-  ppois(20, lambda = 30) # X<=20
theoretical.equal20 <- dpois(20, lambda = 30) # X = 20
theoretical.geq20 <- 1 - ppois(19, lambda = 30) # X >= 20
theoretical.prob <- 1 - ppois(20, lambda = 30) # X > 20 --> 1 - P(X<=20)
l_20 <- ppois(19, lambda = 30) # X < 20

# Empirical probabilities
empirical.prob <- length(x[x <= 20]) / length(x) # X<=20
empirical.prob <- length(x[x >= 20]) / length(x) # X >= 20
empirical.prob <- length(x[x == 20]) / length(x) # X == 20
empirical.prob <- length(x[x > 20]) / length(x) # X > 20
empirical.prob <- length(x[x < 20]) / length(x) # X < 20


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