# Funcoes

a <- c(423,464,69,519,123,258)

# funcao somar
x <- 0
for (i in a) {
  x <- x+i
}
print(x)

# e a contagem dos valores de b?
b <- c(51,36,123,98,23,37,63,3)

# solucao
x <- 0
for (i in b) {
  x <- x +1
}
print(x)

# Criando funcao

soma <- function(y) {
  x <- 0
  for (i in y) {
    x <- x + 1
  }
  print(x)
}

View(soma)

soma(a)
soma(b)

soma2 <- function(y,z) {
  x <- 0
  c <- 0
  for (i in y) {
    c <- c+1
    x <- z[c] + i
    print(x)
  }
}

soma2(a,b)
soma2(b,a)

a+b

sum(a)
sum(b)
