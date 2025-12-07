#2.	Przetestować hipotezę, że średni wzrost wszystkich studentów wynosi
#170cm za pomocą polecenia t.test

waga <- read.csv("C:/Users/Dudek/OneDrive/Pulpit/Repozytoria/Rachunek_prawdopodobienstwa_lab/Lab5/waga1.csv", sep = ';')
head (waga,5)

#H0: mean_height = 170
#H1: mean_height != 170

dane <- waga$Wzrost

t.test()