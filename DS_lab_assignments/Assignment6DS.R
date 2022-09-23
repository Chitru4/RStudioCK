library(dplyr)

df = data.frame('Country' = c('Namibia'),
                'Continent' = c('Africa'),
                'Year' = c('1998'),
                'LifeExp' = c('65'),
                'Pop' = c(180320),
                'gdpPerc' = c(5211631))

edit(df)
#aggregate(aggregate(df,list(df$Continent),FUN = unique),list(df$Continent),count)

