# X has P(240)
# X doesnt have P(240)

freqs <- c(373, 24, 35, 20, 29, 35, 25, 27, 29, 23, 380)


p0 <- ppois(235, lambda = 240)
probs <- dpois(c(236, 237, 238, 239, 240, 241, 242, 243, 244), lambda = 240)

p11 <- dpois(245, lambda = 240) + ppois(245, lambda = 240, lower.tail = FALSE)

probs <- c(p0, probs, p11)

result <- chisq.test(freqs, p = probs)

alpha <- 0.05
alpha < result$p.value # TRUE