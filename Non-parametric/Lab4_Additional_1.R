n<-100

lambda<- 1/10

p1 <- pexp(18, rate = lambda)
p2 <- pexp(21, rate = lambda) - pexp(18, rate = lambda)
p3 <- 1 - pexp(21, rate=lambda)

probs <- c(p1,p2,p3)
freqs <- c(38,27,35) 

# result <- chisq.test(freqs, p=probs)

alpha < result$p.value

n * probs

probs <- c(p1,p2+p3)
freqs <- c(38,27+35) 
result <- chisq.test(freqs, p=probs)
