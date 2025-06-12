n <- 10
m <- 15

s_x<- 5.7
s_y<-9.6

x_<-70
y_<-80

f0 <- 5.7/9.6
f0
alpha<-0.05

lower <- qf(alpha/2,df1=n-1,df2=m-1)
lower
upper <- qf(1-alpha/2,df1=n-1,df2=m-1)
upper

lower>f0 & f0<upper

f0 > lower & f0 < upper
