## Assignment 8.1

library(ggplot2)
library(dplyr)

Project1 <- read.csv('https://raw.githubusercontent.com/biocorecrg/CRG_RIntroduction/master/ex12_normalized_intensities.csv')
# Question 1
plot(Project1$sampleB,Project1$sampleH,type="p")

# Question 2
Project1 <- mutate(Project1,expr_limits=c("None"))
for (i in 1:length(Project1$expr_limits))
{
  if (Project1[i,"sampleB"]>13 & Project1[i,"sampleH"]>13)
  {
    Project1[i,"expr_limits"] <- "high"
  } else if (Project1[i,"sampleB"]<6 & Project1[i,"sampleH"]<6)
  {
    Project1[i,"expr_limits"] <- "low"
  } else
  {
    Project1[i,"expr_limits"] <- "normal"
  }
}

# Question 3
p <- ggplot(Project1,aes(x=sampleB,y=sampleH,col=expr_limits))+geom_point()

# Question 4
ggplot(stack(Project1),aes(x=ind,y=values))+geom_boxplot()

# Question 6
ggplot(Project1,aes(x=expr_limits))+geom_bar()