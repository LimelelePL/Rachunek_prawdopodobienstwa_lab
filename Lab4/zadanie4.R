#i)	Wygenerować 100 realizacji z rozkładu Bin(10; 0,3)

n<-10
p<-0.3
rep <- 100
res <- numeric(rep)

for (i in 1:rep) {
  #generujemy 10 liczb losowych
  u <- runif(n)
  
  #symulujemy 10 prób bernullego
  res[i] <- length(which(u<p))
}


#ii)	Wygenerować 50 realizacji z rozkładu Geom(0,4)

p<-0.4
rep <- 50
res <- numeric(rep)

for (i in 1:rep) {
  trails <- 0
  
  while(TRUE) {
    u <- runif(1)
    trails <- trails + 1
    
    if (u<p) {
      res[i]<-trails
      break
    }
  }
}


