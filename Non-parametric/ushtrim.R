freqs <- c(41, 19, 16, 13, 11)

lambda <- 1/40

p1 <-pexp(20,lambda)
p2 <- pexp(40,lambda) - pexp(20,lambda)
p3 <- pexp(60,lambda) - pexp(40, lambda)
p4 <- pexp(90,lambda) - pexp(60, lambda)
p5 <- 1 - pexp(90,lambda)

probs <- c(p1,p2,p3,p4,p5)

result <- chisq.test(freqs, p = probs)
result

alpha<result$p.value

qchisq(1-0.05,4)