table <- matrix(c(14,48,20,16,55,6), nrow = 2, ncol =3, byrow = TRUE)

dimnames(table)<- list("rows" = c("машки","женски"), "columns"=c("потпросечен приход", "просечен приход", "натпросечен приход"))

table

alpha<-0.05

result <- chisq.test(table, correct=FALSE)
result

alpha < result$p.value # FALSE
# Бидејќи α>p, ја отфрламе H0,
# т.е. постои зависност помеѓу полот и висината на личниот приход.