# Condicoes

# Se
if (5 == 5) 6+6

# Se nao
if (5 == 6) 6+5 else "Condicao nao atendida"

# Melhoras praticas
if (condition) {
  
}

if (5 == 5) {
  6+6
} else { 
  "condicao nao atendida"
}

# Exemplo
idades <- c(25,30)
nomes <- c("Joao", "Caina")
df <- data.frame(nomes, idades)
df

if (df$idades[df$nomes=="Joao"] > df$idades[df$nomes=="Caina"]) {
  "Mais velho: Joao"
} else{
  "Mais velho: Caina"
}

idades <- c(25,30,24,29,31,12)
nomes <- c("Joao","Caina","Maria","Leo","Lia","Enzo")  
df <- data.frame(nomes,idades)
df

# FOR para cada posicao faca isso
for (i in idades) {
  print(i)
}

# exemplo
v <- 0
for (i in df$idades) {
  if (i > v) (v <- i)
}
v
df$nomes[df$idades == v]

# WHILE - enquanto e verdade faca isso
x <- 0
while ( x < 10) {
  print(x)
  x <- x+1
}


# exemplo - nao permitir que as somas das idades seja maior que 100
y <- 0
x <- 0
cont <- 0
idades100 <- 0

while (y < 100) {
  cont <- cont+1
  idades100[cont] <- idades[cont]
  c <- x+idades[cont]
  y <- x+idades[cont+1]
}

print(x)

# +idades[cont+1]
idades
idades100
sum(idades100)
