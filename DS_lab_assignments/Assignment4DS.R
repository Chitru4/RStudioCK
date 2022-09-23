#Question 1
seq(1.3,4.9,by=0.3)
rep(1:4,times=5)
seq(14,0,by=-2)
rep(c(5,12,13,20),each=2)

#Question 2
library(datasets)
summary(iris)
head(iris)
rows.cols = c(0,0)
rows.cols = dim(iris)
str(iris)

#Question 3
aggregate(x = iris$Sepal.Width, by = list(iris$Species) ,FUN = mean)
aggregate(x = iris$Sepal.Width, by = list(iris$Species) ,FUN = sd)

aggregate(x = iris$Sepal.Length, by = list(iris$Species) ,FUN = mean)
aggregate(x = iris$Sepal.Length, by = list(iris$Species) ,FUN = sd)

iris.class = iris

iris.class = cbind(iris.class,"Calyx.Width")

for (i in 1:rows.cols[1])
{
  if (iris.class[i,"Sepal.Length"] < 5)
  {
    iris.class[i,"Calyx.Width"] = "Short"
  } else
  {
    iris.class[i,"Calyx.Width"] = "Long"
  }
}

#iris.class = subset(iris.class, select = -c(Calyx.Width) )
summary(iris.class)

#Question 4
mtcars
mtcars.class = mtcars
for (i in 1:nrow(mtcars.class))
{
  if (mtcars.class[i,"cyl"] < 5)
  {
    mtcars.class = mtcars.class[-c(i),]
  }
}

mtcars[1:10,]

mtcars["Honda",]