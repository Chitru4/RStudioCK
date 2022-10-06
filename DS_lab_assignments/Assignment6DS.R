library(dplyr)

df = data.frame('Country' = c('Namibia'),
                'Continent' = c('Africa'),
                'Year' = c(1998),
                'LifeExp' = c(65),
                'Pop' = c(180320),
                'gdpPerc' = c(5211631))

edit(df)
#aggregate(aggregate(df,list(df$Continent),FUN = unique),list(df$Continent),count)

df %>% group_by(Continent) %>% summarize(n=n_distinct(Country))

df %>% group_by(Year) %>% filter(Continent == "Europe")

df %>% group_by(Continent) %>% summarize(meanofLifeExp = mean(LifeExp))

df %>% group_by(Country) %>% summarize(Totalgdp = sum(gdpPerc)) %>% arrange(desc(Totalgdp)) %>% head(5)

df %>% filter(LifeExp >= 80) %>% select(Country,Year)

df %>% group_by(Country) %>% summarise(abscorrelation = abs(cor(LifeExp,gdpPerc))) %>% arrange(desc(abscorrelation)) %>% head(10)