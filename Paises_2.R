install.packages("gapminder")
library(gapminder)

head(gapminder)

summary(gapminder)

library(ggplot2)

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

# Escolha os países desejados
selected_countries <- c("Brazil", "Russia", "India", "China", "United States", "Germany")

# Filtrar os dados para incluir apenas os países selecionados
selected_data <- subset(gapminder, country %in% selected_countries)

# Criar um gráfico de linha
ggplot(selected_data, aes(x = year, y = pop, color = country)) +
  geom_line() +
  labs(title = "População ao longo do Tempo - Países Selecionados",
       x = "Ano",
       y = "População") +
  scale_color_discrete(name = "País")

install.packages(c("maps", "rworldmap", "ggplot2"))
library(maps)
library(rworldmap)
library(ggplot2)

# Obtenha dados de fronteira do mundo
world_map <- getMap(resolution = "coarse")

# Carregue o conjunto de dados gapminder
data("gapminder")

# Junte os dados de fronteira com os dados de expectativa de vida
merged_data <- merge(world_map, gapminder, by.x = "NAME", by.y = "country")

# Crie um mapa-múndi com a expectativa de vida
ggplot() +
  geom_polygon(data = merged_data, aes(x = long, y = lat, group = group, fill = lifeExp),
               color = "white", size = 0.2) +
  scale_fill_viridis_c() +  # Use outra paleta de cores, se desejar
  theme_minimal() +
  labs(title = "Expectativa de Vida no Mundo",
       fill = "Expectativa de Vida")

install.packages(c("maps", "rworldmap", "ggplot2", "dplyr"))
library(maps)
library(rworldmap)
library(ggplot2)
library(dplyr)

# Obtenha dados de fronteira do mundo
world_map <- getMap(resolution = "coarse")

# Carregue o conjunto de dados gapminder
data("gapminder")

# Ajuste nomes de colunas para corresponder
colnames(world_map) <- c("long", "lat", "group", "region", "subregion", "NAME")


# Realize a junção usando dplyr::inner_join
merged_data <- inner_join(world_map, gapminder, by = c("NAME" = "country"))

# Crie um mapa-múndi com a expectativa de vida
ggplot() +
  geom_polygon(data = merged_data, aes(x = long, y = lat, group = group, fill = lifeExp),
               color = "white", size = 0.2) +
  scale_fill_viridis_c() +
  theme_minimal() +
  labs(title = "Expectativa de Vida no Mundo",
       fill = "Expectativa de Vida")

# Obtenha dados de fronteira do mundo
world_map <- map_data("world")

# Carregue o conjunto de dados gapminder
data("gapminder")

# Realize a junção usando dplyr::inner_join
merged_data <- inner_join(world_map, gapminder, by = c("region" = "country"))

# Crie um mapa-múndi com a expectativa de vida
ggplot() +
  geom_polygon(data = merged_data, aes(x = long, y = lat, group = group, fill = lifeExp),
               color = "white", size = 0.2) +
  scale_fill_viridis_c() +
  theme_minimal() +
  labs(title = "Expectativa de Vida no Mundo",
       fill = "Expectativa de Vida")