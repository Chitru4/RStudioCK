library(dplyr)

df = data.frame('Country' = c('Namibia'),
                'Continent' = c('Africa'),
                'Year' = c(1998),
                'LifeExp' = c(65),
                'Pop' = c(180320),
                'gdpPerc' = c(5211631))

Country<-c("India","USA","Argentina","Portugal","England","Germany","France","Spain","Brazil","Belgium","Netherlands","Russia","China","Japan","Australia","New Zealand","South Africa","UAE","Oman","Qatar")
Continent<-c("Asia","North America","South America","Europe","Europe","Europe","Europe","Europe","South America","Europe","Europe","Europe","Asia","Asia","Australia","Australia","Africa","Asia","Asia","Asia")
Year<-c(2002,2012,2010,2005,2003,2019,2015,2020,2014,2019,2011,2013,2021,2004,2007,2010,2016,2013,2015,2011)
LifeExp<-c(50,70,100,50,120,80,70,90,110,150,90,60,70,100,80,50,60,90,110,120)
Pop<-c(138,142,120,85,90,70,75,80,130,72,70,139,144,60,98,80,75,65,66,70)
gdpPerc<-c(12,10,9,8,9,9.5,8,8.5,10,7,11,12,13,6,9,8.5,9.5,6,7,7)
df<-data.frame(Country,Continent,Year,LifeExp,Pop,gdpPerc)

edit(df)

## QUESTION 1

#Question 1
df %>% group_by(Continent) %>% summarize(n=n_distinct(Country))

#Question 2
df %>% group_by(Year) %>% filter(Continent == "Europe")

#Question 3
df %>% group_by(Continent) %>% summarize(meanofLifeExp = mean(LifeExp))

#Question 4
df %>% group_by(Country) %>% summarize(Totalgdp = sum(gdpPerc)) %>% arrange(desc(Totalgdp)) %>% head(5)

#Question 5
df %>% filter(LifeExp >= 80) %>% select(Country,Year)

#Question 6
df %>% group_by(Country) %>% summarise(abscorrelation = abs(cor(LifeExp,gdpPerc))) %>% arrange(desc(abscorrelation)) %>% head(10)

#Question 7
df %>% filter(Continent != "Asia") %>% summarize(AveragePopulation = mean(Pop))

#Question 8
df %>% group_by(Country) %>% summarize(stand_dev = sd(Pop)) %>% arrange(stand_dev) %>% head(3)

#Question 9
df %>% filter(Year != 1982) %>% group_by(Country) %>% arrange(desc(Pop),LifeExp)

##QUESTION 2
library("ggplot2")
library("ggpubr")

#Question 1
ds = read.csv("DataSet.csv")

#Question 2
head(ds,4)

#Question 3
tail(ds,4)

#Question 4 
cor(ds$Quantity_in_stock,ds$Exp_date)

#Question 5
plot(ds$Manf_year,ds$Sales)
barplot(ds$Sales ~ ds$Manf_year,ds %>% select(Sales,Manf_year))

#Question 6
ds %>% group_by(Company) %>% summarize(diffmeds = unique(MedID)) %>% filter(diffmeds > 1)

#Question 7
unique(ds$Med_Name)

#Question 9
mean(ds$Quantity_in_stock)

#Question 10
relation <- lm(ds$Manf_year~ds$Sales)
abline(lm(ds$Manf_year ~ ds$Sales))
plot(relation)