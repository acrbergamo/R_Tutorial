# Transformando dados brutos para dados limpos capazes de serem utilizados em modelos de aprendizado de maquina
# criando, modificando e excluindo variaveis

setwd('C:/Users/adria/1Python/Github/R_Tutorial')
# https://www.kaggle.com/datasets/sandey/brazilian-vehicle-prices-june-2018-fipe
df <- read.csv("fipe_Jun2018.csv", header = TRUE, encoding = "UTF-")

View(df)
str(df)

# excluindo
df$X <- NULL
df$price_reference <- NULL

# Renomear variaveis

?names
names(df)
names(df) <- c("Marca","Carro","Ano_Modelo","Combustivel","Preco")

# Mudar tipo das variavesi

## Ano_Modelo
summary(df$Ano_Modelo)
df$Ano_Modelo[df$Ano_Modelo==32000] <- "Zero km"
df$Ano_Modelo <- as.factor(df$Ano_Modelo)

summary(df$Ano_Modelo)
str(df$Ano_Modelo)

## Preco
summary(df$Preco)
?gsub
df$Preco <- gsub("R\\$|\\.| ","",df$Preco)
df$Preco <- as.numeric(gsub("\\,",".",df$Preco))
summary(df$Preco)

# Conclusao
str(df)

write.table(df,file="FipeTransformada.csv",row.names=FALSE,sep=",",fileEncoding = "UTF-8" )
