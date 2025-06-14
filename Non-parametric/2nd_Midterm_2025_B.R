# H_0: X ~ B(2, 0.8)
# H_a: X !~ B(2, 0.8)

alpha <- 0.05

probs <-dbinom(c(0,1,2), size=2,prob=0.8)

freqs <- c(2,7,170)

result <- chisq.test(freqs, p=probs)


alpha < result$p.value


result

# Difference betwee dbinom and pbinom:

# 1. dbinom :  density of the binomial distribution
# or the probability mass function (PMF).
# dbinom directly calculates P{X = x}

# 2. pbinom: cumulative distribution function (CDF)
# it calculates: P{X <= x}


# parameters: 
# dbinom(x, size, prob)
# x — number of successes you’re evaluating the probability for (integer or vector).
# size — total number of Bernoulli trials (integer).
# prob — probability of success on each trial (between 0 and 1).

probs <-dbinom(c(0,1,2), size=2,prob=0.8)
probs

probs <-pbinom(c(0,1,2), size=2,prob=0.8)
probs