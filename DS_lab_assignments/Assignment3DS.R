A = 12:16
sum(A)
prod(A)
max(A)
min(A)
range(A)

mean(A)
sd(A)
var(A)
median(A)

B = sort(A)
C = sort(A,decreasing=T)

mat = matrix(1:12,nrow=3,ncol=4)

RW = c()
RW = rbind(RW,A)
RW = rbind(RW,B)
RW = rbind(RW,C)

CW = c()
CW = cbind(CW,A)
CW = cbind(CW,B)
CW = cbind(CW,C)

RW[B]

