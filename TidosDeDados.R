# OBJETIVO: entender como a linguagem R organiza os dados

# COMO?
# Exemplo

# Armazenamento numerico

Salario <- 3450.89
Horas <- 220

SH <- Salario/Horas
SHi <- as.integer(Salario/Horas)
SHr <- round(Salario/Horas)


Numeros1 <- Salario + Horas 
Numeros2 <- c(Salario, Horas)

class(SH)
class(SHi)
class(SHr)
class(Numeros1)
class(Numeros2)

# Armazenamento de caracteres

Nome_1 <- "Eduardo Abreu"
Nome_2 <- "Amanda Lopes"
Idade <- "25"

Idade + 5

Nomes <- Nome_1 + Nome_2
Nomes <- c(Nome_1, Nome_2)

Nomes
Nomes[1]
Nomes[2]

Nome_1 != Nome_2

class(Nomes)
class(Idade)
summary(Idade)

# Armazenamento de fatores

CargaHoraria <- c(220, 220, 150, 100, 100)
summary(CargaHoraria)

CargaHoraria <- as.factor(CargaHoraria)
summary(CargaHoraria)
mode(CargaHoraria)
class(CargaHoraria)

# Armazenamento logico

L1 <- Salario > Horas
L1

L2 <- Salario < Horas
L2

Logico <- TRUE
Logico <- "TRUE"
Logico2 <- c(1, FALSE, 3)

# Vetores - Estrutura básica de dados
# Uma sequencia de dados do mesmo tipo

# vetor de caracteres
is.vector(Nomes)
mode(Nomes)

# vetor numerico
is.vector(Horas)
mode(Horas)

# vetor logico
is.vector(L1)
mode(L1)

# Lista - vetor com tipos de dados diferentes
a <- c(1, 2, 3, 4, 5)
b <- c(1, "2", 3, 4, 5)
a
b
b <- as.numeric(b)
b

is.list(a)
is.list(b)

is.vector(a)
is.vector(b)


b <- list(10, "2", 8)
is.list(b)
mode(b)
str(b)

e <- list(c(10, 6, 51, 5), "2", 8)
is.list(e)
mode(e)
str(e)
e[[1]][2]

# Matrizes - Duas dimensoes um tipo de dado

m <- matrix(1:9, nrow = 3)
m
mode(m)
class(m)

# m[linha, coluna]
m[1,3]
m[1,3] <- "a"
mode(m)
m
class(m)

# DataFrames

# Definir area de trabalho
setwd("C:/Area de Trabalho")

# Importando base de dados
df <- read.csv("Meu Arquivo.csv", sep=";")

# Analisando um DataFrame
View(df)
# Tipos de dados
str(df)
summary(df)

# Selecionando variaves
df
df[1]
df$DIA_SEM

col1 <- df[1]
col2 <- df$DIA_SEM
col1
col2

# Modeficando o DF

# Excluindo variavel
df$ONIBUS <- NULL

# Alterando o tipo da Variavel dentro do df
df$UPS
summary(df$UPS)
df$UPS <- as.factor(df$UPS)
df$UPS
summary(df$UPS)

# Crianao uma nova variavel dentro do df
df$NOVA <- "a"
class(df$NOVA)
df$NOVA <- c(2,5,10)
df
df$NOVA <- c(2,10, NA,NA,NA,NA,NA,NA,NA)
df
df$NOVA <- NULL
df
df$NOVA <- NA
df
df$NOVA[1:3] <- c(2,5,10)
df
class(df$NOVA)
