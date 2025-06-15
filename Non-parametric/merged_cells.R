#Brojot na testiranja do detekcijata na virusot
#H_0: X ima geometriska raspredlba so parametar 0.8
#H_a: X nema geometriska raspredlba so parametar 0.8

freq<-c(50,30,15,5)

p1<-dgeom(0,0.8)

p2<-dgeom(1,0.8)
p3<-dgeom(2,0.8)

p4<-1-(p1+p2+p3)
##p4
##p44<-pgeom(3,0.8,lower.tail = FALSE)+dgeom(3,0.8)

prob<-c(p1,p2,p3,p4)

result<-chisq.test(freq,p=prob)
# pgeom(1, lower.tail = FALSE) == P[X > 1]
# dgeom(1) == P[X == 1]
# So their sum == P[X == 1 or greater] == P[X >= 1]

#spojuvanje klasi

pp1<-p1
pp2<-pgeom(1,0.8,lower.tail = FALSE) + dgeom(1,0.8) # P{X>=2}

n1=50
n2=50

freqq<-c(50,50)
probs<-c(pp1,pp2)


result<-chisq.test(freqq,p=probs)

alpha<-0.05

alpha < result$p.value