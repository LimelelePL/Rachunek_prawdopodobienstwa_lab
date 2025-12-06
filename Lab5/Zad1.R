#1.	Średni wskaźnik inteligencji (IQ) dla próby 100 studentów wynosi 109. 
#Wariancja z próby wynosi 225. Spośród tych studentów, 30 ma IQ wyższy niż 115..

var <- 225
s <- sqrt(225)
n <- 100
meanIQ <- 109
p_hat <- 30 / 100 # proporcja z próby
alpha <- 0.05 #maksymalny dopusczalny błąd

#a)	Przetestować hipotezę, że 35% wszystkich studentów ma IQ wyższy niż 115
#i) za pomocą testu Z, ii) za pomocą polecenia prop.test

# HIPOTEZY
# H0: p = 0.35
# H1: p != 0.35

alpha_max <- 0.05 #maksymalny dopusczalny błąd
p0 <- 0.35
s_e_p <- sqrt ((p_hat*(1-p_hat))/n )
t <- abs((p_hat - p0) / s_e_p)
p <- 2 * (1 - pnorm(t, 0, 1))
is_H0_false <- p < alpha_max

prop.test(x = 30, n = 100, p = 0.35, correct = FALSE, conf.level = 0.95)
# wniosek p>alpha, nie odrzucamy h0 -
#Nie ma wystarczających dowodów, aby odrzucić hipotezę, że 35% wszystkich studentów ma IQ wyższe niż 115.


#b)	Wyznaczyć przedział ufności dla proporcji wszystkich studentów mającej 
#IQ wyższy niż 115 na poziomie ufności 99% za pomocą
#i) przybliżenia do rozkładu normalnego
#ii) prop.test

alpha <- 0.01 
q <- abs (qnorm(alpha/2)) 
max_int <- .Machine$integer.max
t <- qt(1-alpha/2, max_int)
sep_hat <- sqrt(p_hat*(1-p_hat)/n) 
przedzial = Pair(p_hat- t * sep_hat, p_hat + t*sep_hat)

prop.test(x = 30, n = 100, p = 0.35, correct = FALSE, conf.level = 0.99)







