# solve in R For the non-negative random variable X,
# the real axis is divided into the following classes:
# S1=(−inf, 1), S2=[1, 2), S3=[2, 3), S4=[3, 4), S5=[4, 5), S6=[5, +inf). Based on a sample size of 1000, the frequencies of those classes were determined: 610, 220, 100, 40, 20, 10 respectively. At a 5% significance level, test the hypothesis that the sample
# is drawn from an exponential E(1) distribution.

freqs<- c(610, 220, 100, 40, 20, 10)

lambda <- 1

# p1: P(X < 1) (-inf,1)
p1 <- pexp(1, rate = lambda)

# p2: P(1 <= X < 2) [1,2)
p2 <- pexp(2, rate = lambda) - pexp(1, rate = lambda)

# p3: P(2 <= X < 3) [2,3)
p3 <- pexp(3, rate = lambda) - pexp(2, rate = lambda)

# p4: P(3 <= X < 4) [3,4)
p4 <- pexp(4, rate = lambda) - pexp(3, rate = lambda)

# p5: P(4 <= X < 5) [4,5)
p5 <- pexp(5, rate = lambda) - pexp(4, rate = lambda)

# p6: P(X >= 5) [5,+inf)
p6 <- 1 - pexp(5, rate = lambda)

probs<- c(p1,p2,p3,p4,p5,p6)
probs

result <- chisq.test(freqs, p=probs)
result
