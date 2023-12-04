
library(geobr)
library(dplyr)

# Brasil
br <- read_country(year = 2020)
# SP
sp_state <- read_state(code_state = 'SP', year = 2020)

# Encontrando o codigo municipal de São Paulo
lookup_muni(name_muni = "Sao Paulo")
# Carregando base de dados do municipio de Sâo Paulo
sp_city <- read_municipality(code_muni = 3550308 , year = 2020)

plot(sp_city$geom)

# Bairros do municipio de São Paulo
sp_nh <- read_neighborhood(code_muni = 3550308,year = 2020, )

?read_census_tract()
