#3.	Wygenerować 1000 liczb z następnego rozkładu dyskretnego (należy zminimalizować oczekiwany czas działania).

#k	    0	     1	   2 	 3
#P(X=k)	0,15	0,25	0,5	0,1

probabilities <- c(0.15, 0.25, 0.5, 0.1)
values <- c(0, 1, 2, 3)
cumulated_prob <- cumsum(probabilities)

u <- runif(1000)
result <- numeric(1000)

for (i in 1:1000) {
  j <- 1
  # szukamy odpowiedniego przedziału (indeks j)
  while (u[i] > cumulated_prob[j]) {
    j <- j + 1
  }
  
  result[i] <- values[j]
}

