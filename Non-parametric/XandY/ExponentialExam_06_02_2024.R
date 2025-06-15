# 06.02.2024

# group A
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


# group B
freqs2 <- c(40, 31, 31, 22, 23, 53)
lambda <-1/12


p0 <- pexp(3, lambda)
p1 <- pexp(6, lambda) - pexp(3, lambda)
p2 <- pexp(9, lambda) - pexp(6, lambda)
p3 <- pexp(12, lambda) - pexp(9, lambda)
p4 <- pexp(18, lambda) - pexp(12, lambda)
p5 <- 1- pexp(18, lambda)

probs2 <- c(p0,p1,p2,p3,p4,p5)

chisq.test(freqs2, p=probs2)









