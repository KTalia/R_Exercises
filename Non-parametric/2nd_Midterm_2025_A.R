# H_0: X ~ P(2)
# H_a: X !~ P(2)

alpha <- 0.01

p0 <- dpois(0, lambda = 2) # P[X = 0] when X~Poisson(2)
p1 <- dpois(1, lambda = 2) # P[X = 1] when X~Poisson(2)
p2 <- ppois(2,lambda=2, lower.tail=FALSE) + dpois(2,lambda = 2) # P[X == 2] and P[X >= 2] 

probs <- c(p0,p1,p2)
probs

sum(probs)


freqs <- c(10,65,25)

result <- chisq.test(freqs, p=probs)

alpha < result$p.value # FALSE

# Alpha is not less than p.value, H_0 is discarded, i.e. X doesnt have P(2)