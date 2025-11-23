#g(x) = 0.5x 0<=x<=2

#a)	i) Napisać algorytm, który losuje realizację z tego rozkładu za pomocą metody odwracania dystrybuanty.
#ii) Wygenerować 200 realizacji z tego rozkładu za pomocą tego algorytmu.

# odwrotna funckja do g(x) = f(p) = 2p dla 0<=p<=1
f <- function(p){
  return(2*p)
}

rep <- 200
res <- numeric(rep)
u <- runif(rep)

for (i in 1:rep) {
  res[i] = f(u[i])
}

#b)
#i) Napisać własny (tym razem nie wykorzystujemy gotowej funkcji) algorytm, 
#który losuje realizację z tego rozkładu za pomocą metody przyjęcia i odrzucenia.
#ii) Wygenerować 200 realizacji z tego rozkładu za pomocą tego algorytmu.


#ponieważ funkcja g określona jest na przedziale, korzystam z 
# uproszczonej metody przyjecia i odrzucenia
g <- function(x) {
  return(0.5*x)
}
a<-0
b<-2

rep <- 200
maxG <- 0.5*2
res <- numeric(rep)

for (i in 1:rep) {
  while (TRUE) {
    x <- runif(1, a, b)
    u <- runif(1)
    
    if(u < g(x)/maxG) {
      res[i] <- x
      break
    }
  }
}

