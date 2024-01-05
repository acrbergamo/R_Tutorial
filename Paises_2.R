#install.packages("gapminder")
library(gapminder)
library(ggplot2)

head(gapminder)

summary(gapminder)



ggplot(gapminder, aes(x = year, y = gdpPercap, color = continent)) +
  geom_point() +
  ggtitle("PIB per capita ao longo do tempo por continente")

colnames(gapminder)

# Filtrar os dados apenas para o Brasil
brazil_data <- subset(gapminder, country == "Brazil")

# Criar um gráfico de linha
ggplot(brazil_data, aes(x = year, y = pop)) +
  geom_line() +
  labs(title = "População do Brasil ao longo do Tempo",
       x = "Ano",
       y = "População")



###################

# Escolha os países desejados
selected_countries <- c("Brazil", "Russia", "India", "China", "United States", "Germany")

# Filtrar os dados para incluir apenas os países selecionados
selected_data <- subset(gapminder, country %in% selected_countries)
# Selecione apenas as variáveis relevantes
selected_data <- gapminder[, c("lifeExp", "pop", "gdpPercap")]

# Calcule a matriz de correlação
correlation_matrix <- cor(selected_data)

# Exiba a matriz de correlação
print(correlation_matrix)

# Crie uma matriz de correlação visual usando ggcorrplot
install.packages("ggcorrplot")
library(ggcorrplot)

# Plot a matriz de correlação
ggcorrplot(correlation_matrix, 
           method = "circle", 
           title = "Matriz de Correlação entre lifeExp, pop e gdpPercap",
           hc.order = TRUE, 
           ggtheme = theme_minimal())



