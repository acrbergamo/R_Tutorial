# Filtros

#Variaveis
vogais <- c("a","e","i","o","u")

# acessar o conteudo que esta na posicao 3
vogais[3]

# acessar tudo menos a posicao 3
vogais[-3]

# dados entre a posicao 3 e 5
vogais[3:5]

# dados considerando o comprimento
length(vogais)
vogais[3:length(vogais)]
vogais[(length(vogais)-2):length(vogais)]

# dados considerando outras variaveis
a <- 3
b <- 5
vogais[a:b]

# acessar através de condicoes
vogais!="e"
vogais[vogais=="e"]
vogais[vogais!="e"]

a <- c(1,2,3,4,5)
a>2
a[a>2]
a[a>=2]

# Trabalhando com DataFrames

setwd("C:/Area de Trabalho")
df <- read.csv("Meu arquivo.csv", sep = ";")

df[1]
df[1,]
# df[linha,coluna]

df[1:6]
df[-4]

df[1,1]
df[1,1:6]
df[-1,-4]

# modificando o df
df <- df[c(-3,-4,-5,-6)]
df

# filtrando as variaveis

df[1,1]
df$DIA_SEM[1]
df$AUTO[2:4]
df[df$UPS == 1,]

# modificando o df
df <- df[df$UPS == 1,]
df

# df x df1
df1 <- read.csv("Meu Arquivo.csv", sep = ";")
View(df1)
