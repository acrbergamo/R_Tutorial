install.packages("gapminder")
library(gapminder)

head(gapminder)

summary(gapminder)

library(ggplot2)

ggplot(gapminder, aes(x = year, y = gdpPercap, color = continent)) +
  geom_point() +
  ggtitle("PIB per capita ao longo do tempo por continente")
