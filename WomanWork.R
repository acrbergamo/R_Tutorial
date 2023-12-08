# Instalar e carregar o pacote Ecdat
if (!requireNamespace("Ecdat", quietly = TRUE)) {
  install.packages("Ecdat")
}

library(Ecdat)

# Carregar o conjunto de dados Mroz
data("Mroz")
df <- Mroz

# Visualizar as primeiras linhas do conjunto de dados
head(df)

# Resumo estatístico das variáveis numéricas
summary(df)

# Gráfico de dispersão entre duas variáveis (por exemplo, exper e nwifeinc)
plot(df$exper, df$nwifeinc, main="Dispersão entre exper e nwifeinc", 
     xlab="Experiência", ylab="Renda da esposa")

# Histograma de uma variável (por exemplo, exper)
hist(df$exper, main="Histograma da Experiência", xlab="Experiência")

# Boxplot de uma variável em relação a outra (por exemplo, exper em relação a educ)
boxplot(df$exper, by = df$educ,
        main = "Boxplot da Experiência por Educação",
        xlab = "Educação", ylab = "Experiência")

# Se as colunas existirem, calcular a correlação
correlation_matrix <- cor(df[, c("wagew", "educw", "wageh")])
print(correlation_matrix)