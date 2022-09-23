library(readr)
library(dplyr)

#Question 1
df = read_csv('daily_show_guests.csv')
print(df,n=10)

#Question 2
colnames(df)
colnames(df) = c('year','job','date','group','guest_name')

#Question 3
df[,c('year','date','guest_name')]

#Question 4
select(df,-(year))

#Question 5
df[df$job == 'actor',]
df[df$job == 'actor' & df$guest_name == 'Michael J. Fox',]

#Question 6
df[order(as.Date(df$date,format = "%m/%d/%y")),]

#Question 7
mutate(df,Experience = 0)