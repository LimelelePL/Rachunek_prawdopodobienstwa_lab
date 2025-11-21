
cum_prob <- function (prob) {

  len <- length(prob)
  res <- array (0, dim = len)
  res [1] = prob[1]
  
  for (i in 2:len) {
    res[i] <- res[i-1] + prob[i]
  }
  
  return(res)
}

binarySearchIndex <- function (cum_prob, u) {
  low <- 1
  high <- length (cum_prob)
  result_index <- high
  
  while (low<=high) {
    mid <- floor((low+high)/2)
      
    if(u<= cum_prob[mid]){
      result_index = mid
      high <- mid - 1
    } else {
      low <- mid + 1
    }
  }
  return(result_index)
}

#zadanie 1
#wartosci i prawdopodobienstwa musza byc uporządkowane malejąco
values <- c(2,1,3,5)
probabilities <- c(0.4, 0.2, 0.3, 0.1)
n <- 5

#obliczamy wektor prawdopodobienstw skumulowanych
cum_prob <- cum_prob(probabilities)

draw_realizationU <- function (cum_prob, values, u, n) {
  realization <- array(0, n) # n to liczba losowań
  for (i in 1:n){
    #efektywnie uzywamy wyszukiwania binarnego
    j <- binarySearchIndex(cum_prob, u[i])
    realization[i] <- values[j]
  }
  return(realization)
}

# generujemy 5 realizacji
u <- c(0.641932, 0.019873, 0.171584,  0.263589, 0.663152)
realizations <- draw_realizationU(cum_prob, values, u, n)

#zadanie 2
# rozkład gemometryczny modeluje ile porażek nastąpi przed pierwszym sukcesem bernoullego
#a)
p <- 0.5
n <- 2
draw_realizationG <- function(p, u, n) {
  res <- array(0,n)
  index <- 1 # indeks w wektorze u
  
  for (i in 1:n) {
    count <- 0 ## licznik rzutów w danej realizacji
    while(TRUE) { 
      if (u[index] < p) { ## wykonujemy petle aż będzie sukces
        count <- count + 1 
        index <- index + 1
        res[i] <- count
        break
      } else {
        count <- count + 1
        index <- index + 1
      }
    }
  }
  
  return(res)
}

u <- c(0.641932, 0.019873, 0.171584,  0.263589, 0.663152)
realizations <- draw_realizationG(p, u, n)

#b)

p <- 0.5
u <- c(0.641932, 0.019873, 0.171584, 0.263589, 0.663152)
n <- 5

draw_realizationGP <- function(p, u, n) {
  res <- numeric(n)
  
  for (i in 1:n) {
    k <- 1
    cum <- p  # P(X = 1)
    
    # metoda prawdopodobieństw skumulowanych
    while (u[i] > cum) {
      k <- k + 1
      cum <- cum + (1 - p)^(k - 1) * p
    }
    
    res[i] <- k
  }
  
  return(res)
}

realizations <- draw_realizationGP(p, u, n)

#zad 3
#a)
#dystrybuanta F(X) = x^2/4 F^-1(p) = 2sqrt(p) dla 0<=p<=1 (p to prawdopodobienstwo)

f <- function(x) {
  return(x^2/4)
}
g <- function(x) {
  return(2*sqrt(x))
}

draw_realization3a <- function(u,n) {
  res = array(0,n)
  for (i in 1:n) {
    res[i] = g(u[i])
  }
  return(res)
}
u <- c(0.641932, 0.019873, 0.171584,  0.263589, 0.663152)
realizations3a <- draw_realization3a(u,5)

#b)

draw_realization3b <- function(u,n) {
  a<- 0 
  b<- 2
  res = array(0,n)
  
  
  for (i in 1:n) {
    while (TRUE) { #bo max(f(x)) = 1
      x <- runif(1,a,b)
      if(u[i]< ( 0.5*x/f(2) )){
        res[i] = x
        break
      }
    }
  }
  return(res)
}
u <- c(0.641932, 0.019873, 0.171584,  0.263589, 0.663152,  0.985853,  0.641737,  0.476182,  0.991198,  0.288609)
realizations3b <- draw_realization3b(u,3)

#c
a<- 0 
b<- 2
p <- 1/((b-a)*1)
result <- 1/p

#zad 4
#a

f <- function (x) {
  return(cos(x))
}

draw_realization4a <- function(u,n) {
  a<- 0 
  b<- pi/2
  res = array(0,n)
  
  for (i in 1:n) {
    while (TRUE) { #bo max(cosx) = cos 0 = 1
      x <- runif(1,a,b)
      if(u[i]< ( f(x)/f(0) )){ 
        res[i] = x
        break
      }
    }
  }
  return(res)
}

u <- c(0.641932, 0.019873, 0.171584,  0.263589, 0.663152,  0.985853,  0.641737,  0.476182,  0.991198,  0.288609)
realizations4a <- draw_realization4a(sample(u,3),3)

#liczba propozycji
p <- 1/((b-a)*1)
result <- 1/p

#b

draw_realization4b <- function(u,n) {
 k<- 0 #bo rozklad symetryczny wzgledem 0
 res <- array(0,n)
 
for (i in 1:n) {
  x <- draw_realization4a(runif(1), 1)
  if (u[i]<0.5) {
    x<- 2*k-x
  }
  res[i] <- x
}
 return(res)
}


u <- c(0.641932, 0.019873, 0.171584,  0.263589, 0.663152,  0.985853,  0.641737,  0.476182,  0.991198,  0.288609)
realizations4b <- draw_realization4b(sample(u,3),3)







 

