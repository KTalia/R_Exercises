p0<- 0.3
p1<-0.35
p2<-0.35


x<- c(1, 1, 1, 1, 0, 0, 0, 2, 1, 1, 2, 2, 1, 0, 1, 1, 1, 1, 0, 0, 0, 2, 1, 1, 2, 2, 1, 0)
table(x)

freqs <- c(8, 14, 6)

probs <- c(p0, p1, p2)
chisq.test(freqs, p=probs)