library('BSDA')

# H0: sigma_x = sigma_y
# Ha: sigma_x != sigma_y

road1<- c(150, 170, 210, 150, 197, 200, 170, 211, 192, 162, 167, 94, 210, 160, 190, 174, 93, 200, 170)
road2<- c(93,143, 176, 204, 200, 170, 155, 120, 180, 130, 140, 140, 50)

n<-length(road1) # 19

m<-length(road2) # 13

alpha<-0.05

x_ <- mean(road1)
y_ <- mean(road2)

var_road1 <- var(road1)
var_road2 <- var(road2)

var_road1
var_road2


f0 <- var_road1/var_road2
f0

lower <- qf(alpha / 2, df1 = n - 1, df2 = m - 1)
lower

upper <- qf(1-alpha/2, df1=n-1,df2=m-1)
upper


0.6325>lower & 0.6325 < upper


# If the result is TRUE, then the F-statistic lies within the acceptance region, and you do not reject 
# 𝐻0(variances are equal).

# If the result is FALSE, then the F-statistic is outside the critical bounds, and you reject 
#𝐻0 (variances are not equal).

var.test(road1, road2)

alpha <  0.3685 # IS TRUE: we fail to reject H0 and conclude the variances are equal.







