# H0: X has a normal distribution
# Ha: X doesnt have a normal distribution

mu <- 173
sigma <- 7
n<-100
p1 <- pnorm(160, mean = mu, sd = sigma) # (-infinity, 160)
p2 <- pnorm(166, mean = mu, sd = sigma) - pnorm(160, mean = mu, sd = sigma) # [160, 166)
p3 <- pnorm(172, mean = mu, sd = sigma) - pnorm(166, mean = mu, sd = sigma) # [166, 172)
p4 <- pnorm(178, mean = mu, sd = sigma) - pnorm(172, mean = mu, sd = sigma) # [172, 178)
p5 <- pnorm(184, mean = mu, sd = sigma) - pnorm(178, mean = mu, sd = sigma) # [178, 184)
p6 <- pnorm(184, mean = mu, sd = sigma, lower.tail = FALSE) # [184, +infinity)
# p6 <- 1-pnorm(184, mean = mu, sd = sigma) 


probs <- c(p1, p2, p3, p4, p5, p6)
freqs <- c(5, 17, 38, 25, 9, 6)

n*probs

freqs <- c(5 + 17, 38, 25, 9, 6)

probs <- c(p1+p2, p3, p4, p5, p6)

result <- chisq.test(freqs, p = probs)

alpha<result$p.value