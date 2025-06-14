# 1. Geo(p)
# pgeom(q,p) #q: nr of failures before the first success
p_0 <- pgeom(1,0.3) # P{X=0}+P{X=1}
p_1 <- dgeom(2,0.3) # P{X=3}


# 2. NB(size,prob)
# dnbinom(x,size,prob)
p0 <- dnbinom(x=0,size=3,prob=0.5)

# 3. B(n,p)
# dbinom(x,size,prob)
p1<- dbinom(x=0,size=2,prob=0.8)
probs <-dbinom(c(0,1,2), size=2,prob=0.8)

# 4. P(lambda)
# dpois(x,lambda)
p0 <- dpois(0, lambda = 2) # P[X = 0] when X~Poisson(2)
p1 <- dpois(1, lambda = 2) # P[X = 1] when X~Poisson(2)
p2 <- ppois(2,lambda=2, lower.tail=FALSE) + dpois(2,lambda = 2) # P[X == 2] and P[X >= 2] 


