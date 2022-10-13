## ASSIGNMENT 7

## Question 1
MARKS <- matrix(sample(1:100,60),nrow=20,ncol=3)
colnames(MARKS) <- c("SUB1","SUB2","SUB3")
# Part a
apply(MARKS,1,sum)
# Part b
MARKS <- cbind(MARKS,apply(MARKS,1,sum))
colnames(MARKS) <- c("SUB1","SUB2","SUB3","TOTAL")
# Part c
st.err = function(x) sd(x)/sqrt(length(x))
apply(MARKS[,1:3],2,st.err)
# Part d
MARKS <- apply(MARKS,2,function(x) x+0.25)
MARKS[,"TOTAL"] <- apply(MARKS[,1:3],1,sum)

## Question 2
V1 <- MARKS[,"SUB1"]
V2 <- MARKS[,"SUB2"]
V3 <- MARKS[,"SUB3"]
sprintf("Sum of V1:%f",lapply(list(V1),sum))
sprintf("Sum of V2:%f",lapply(list(V2),sum))
sprintf("Sum of V3:%f",lapply(list(V3),sum))

## Question 3
TOTAL_SUM = cbind(sapply(V1,sum),cbind(sapply(V2,sum),V3))

## Question 4
sapply(V1,function(x) x**2)
sapply(V2,function(x) x**2)
sapply(V3,function(x) x**2)

## Question 5
I = rep(c(1,2,3,4),each=5)
MARKS <- cbind(MARKS,I)
tapply(MARKS[,"SUB1"],MARKS[,"I"],mean)
tapply(MARKS[,"SUB1"],MARKS[,"I"],sd)

## Question 6
mapply(function(x,y) x/y,V1,V2)

## Question 7
data("Seatbelts")
apply(Seatbelts,1,sum)
