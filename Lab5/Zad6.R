#6.	Przetestować hipotezę, że proporcja studentów (płci męskiej) wyższych niż 180cm wynosi 
#25% za pomocą polecenia prop.test
waga <- read.csv("C:/Users/Dudek/OneDrive/Pulpit/Repozytoria/Rachunek_prawdopodobienstwa_lab/Lab5/waga1.csv", sep = ';')

#h0 : p = 0.25
#H1 : P != 0.25

n <- nrow( waga[(waga$plec == 0),])
x <- length (waga[ (waga$plec == 0 & waga$Wzrost > 180) ,] $ Wzrost) #liczba sukcesow

prop.test(x = dane, p = 0.25, n = n, conf.level = 0.95)