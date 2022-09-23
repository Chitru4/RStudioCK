#Question 1
Patients <- data.frame("PatientId" = 1:4,
                       "AdmDate"= c("10/15/2009","11/01/2009","10/21/2009","10/28/2009"),
                       "Age" = c(25,84,28,52),
                       "Diabetes" = c("Type1","Type2","Type1","Type1"),
                       "Status" = c("Poor","Improved","Excellent","Poor"))

#Question 2
print(list(Patients$PatientId))
print(list(Patients$PatientId,Patients$Age))

sum(Patients$Status == 'Poor')

summary(Patients)

mean(Patients$Age)

temp = list(0,0,0,0,0)

temp[1] = readline("Enter PatientId:")
temp[2] = readline("Enter AdmDate:")
temp[3] = readline("Enter age:")
temp[4] = readline("Enter Diabetes type:")
temp[5] = readline("Enter Status:")

Patients = rbind(Patients,temp)

#Question 3
MyList = list("My First List")
Criteria = list()
colnames(MyList) = c("a","")
a = c(12, 14,16, 20)
mat = matrix(data=0,nrow=5,ncol=2)
s = c("First", "Second", "Third")
criteria = c(a,mat,s)
