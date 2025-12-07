
#7.	Wyznaczyć przedział ufności dla proporcji studentów (płci męskiej)
#wyższych niż 180cm na poziomie ufności 96%.
waga <- read.csv("C:/Users/Dudek/OneDrive/Pulpit/Repozytoria/Rachunek_prawdopodobienstwa_lab/Lab5/waga1.csv", sep = ';')

alpha <- 0.04;
n <- nrow ( waga [ (waga$plec == 0 &  waga $Wzrost > 180) , ] )
n_studenci <- nrow ( waga [(waga $ plec == 0),])
p_hat <- n / n_studenci

t <- qt (1-alpha/2, n_studenci-1)
se_p_hat <- sqrt ( p_hat*(1-p_hat)/n_studenci )

przedzial <- Pair (p_hat - t * se_p_hat, p_hat + t * se_p_hat)


