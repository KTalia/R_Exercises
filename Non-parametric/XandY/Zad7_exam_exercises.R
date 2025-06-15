

table <- matrix(c(14,48,20,16,55,6),2,3,byrow=TRUE)

rows<-c("male", "female")
columns <- c("below avg", "average", "above avg")
dimnames(table)<- list("rows"= rows, "columns" =columns)
table

chisq.test(table,correct = FALSE)

77+82