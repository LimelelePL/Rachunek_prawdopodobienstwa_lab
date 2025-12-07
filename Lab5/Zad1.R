#1.	Średni wskaźnik inteligencji (IQ) dla próby 100 studentów wynosi 109. 
#Wariancja z próby wynosi 225. Spośród tych studentów, 30 ma IQ wyższy niż 115..

var <- 225
s <- sqrt(225)
n <- 100

#a)	Przetestować hipotezę, że 35% wszystkich studentów ma IQ wyższy niż 115
#i) za pomocą testu Z, ii) za pomocą polecenia prop.test

# HIPOTEZY
# H0: p = 0.35
# H1: p != 0.35

p_hat <- 30 / 100 # proporcja z próby
alpha_max <- 0.05 #maksymalny dopusczalny błąd
p0 <- 0.35
s_e_p <- sqrt ((p_hat*(1-p_hat))/n )
t <- abs((p_hat - p0) / s_e_p)
p <- 2 * (1 - pnorm(t, 0, 1))
is_H0_false <- p < alpha_max

prop.test(x = 30, n = 100, p = 0.35, correct = FALSE, conf.level = 0.95)
# wniosek p>alpha, nie odrzucamy h0 -
#Nie ma wystarczających dowodów,
# aby odrzucić hipotezę, że 35% wszystkich studentów ma IQ wyższe niż 115.


#b)	Wyznaczyć przedział ufności dla proporcji wszystkich studentów mającej 
#IQ wyższy niż 115 na poziomie ufności 99% za pomocą
#i) przybliżenia do rozkładu normalnego
#ii) prop.test

p_hat <- 30 / 100 # proporcja z próby
alpha <- 0.01 
t <- qt(1-alpha/2, n-1)
sep_hat <- sqrt(p_hat*(1-p_hat)/n) 
przedzial = Pair(p_hat- t * sep_hat, p_hat + t*sep_hat)

prop.test(x = 30, n = 100, p = 0.35, correct = FALSE, conf.level = 0.99)

#c)	Wyznaczyć przedział ufności dla średniego IQ wszystkich studentów na poziomie 
#ufności 90% w oparciu o wzór na przedział ufności dla dużej próby
#(czyli w oparciu o wartość krytyczną dla rozkładu normalnego).


alpha <- 0.1
meanIQ <- 109
z <- qnorm (1-0.1/2)
s_e_meanIQ <- s / sqrt(n)
przedzial = Pair (meanIQ -z * s_e_meanIQ, meanIQ + z * s_e_meanIQ)

#d)	Wyznaczyć przedział ufności dla średniego IQ wszystkich studentów na poziomie
#ufności 90% w oparciu o wartość krytyczną dla rozkładu Studenta. 

alpha <- 0.1
meanIQ <- 109
z <- qt(1-0.1/2, n-1)
s_e_meanIQ <- s / sqrt(n)
przedzial <- Pair(meanIQ - z * s_e_meanIQ, meanIQ + z * s_e_meanIQ)

#e)	Przetestować hipotezę, że średni IQ studentów wynosi 115. 
#Wyznaczyć odpowiednią wartość p za pomocą i) testu Z, ii) testu T (studenta).

# H0: u0 = 115
# H1: u0 != 115

alpha_max <- 0.05
t <- abs ( sqrt(n) * (meanIQ - 115) / s  )

#test z
p <- 2 * (1 - pnorm(t))
is_H0_falseN <- p < alpha_max

#wniosek ponieważ p<0.5 mamy wystarczające dowody by odrzucic H0 i przyjąć H1

#test studenta
T_alpha2 <- qt(1-alpha_max/2, n-1)
is_H0_falseT <- abs(t) > T_alpha2















