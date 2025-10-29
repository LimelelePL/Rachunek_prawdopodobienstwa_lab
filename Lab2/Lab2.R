# zadanie 1


imie = c("Krzysztof", "Maria", "Henryk", "Anna")
plec = c("m", "k", "m", "k" )
analiza = c(3.5, 4.5, 5.0, 4.5)
algebra = c(4.0, 5.0, 4.0, 3.5)

oceny <- data.frame(imie, plec, analiza, algebra)
print(head(oceny, 2)) # head(w.zmiennych/ramka, n) wypisauje n wierszy odpowiednich danych lub ramki
str(oceny) #mamy 4 obserwacje (wiersze, studenci), 4 zmienne (kolumny)
srednia <- sum(oceny[["analiza"]])/length( oceny[["analiza"]] ) # oceny[[x]] zwraca wektor  
srednia_kazdego <- (oceny$analiza + oceny$algebra) / 2 # oceny$x zwraca ramke
oceny$Srednia <- srednia_kazdego
wyniki_kobiet <- oceny[oceny$plec == 'k', ]
oceny_wieksze_niz_4.5 <- oceny [ oceny$analiza>=4.5 | oceny$algebra>=4.5, ] 
ile_osob_wiecej_niz_4.5 <- nrow (( oceny [ oceny$analiza>=4.5 | oceny$algebra>=4.5,]))

#zadanie 2

#Plik zawiera płeć (0-mężczyzna, 1-kobieta) wzrost  (w centymetrach)  
#i wagi, przed i po studiach, (w kilogramach) dla próby studentów.

waga <- read.csv("C:/Users/Dudek/OneDrive/Pulpit/Repozytoria/Rachunek_prawdopodobienstwa_lab/Lab2/waga1.csv", sep = ';')
print(head(waga, 5))

str(waga) # 4 zmienne, 99 osobnikow

sredni_wzrotst <- sum(waga[["Wzrost"]])/length(waga[["Wzrost"]])

srednia_waga_przed_studiami <- sum(waga[["Waga_przed"]])/length(waga[["Waga_przed"]])

wskaznik_wagi <- waga$Waga_przed/(waga$Wzrost*waga$Wzrost/10000)
waga$Wskaznik_wagi <- wskaznik_wagi

kobiety_wakaznik_wiekszy_25 <- waga[waga $plec == 1 & waga $ Wskaznik_wagi >= 25 ,]
waga_mezczyzni <- waga[waga$plec ==0 , ]

wyzsi_niz_170 <- nrow(waga[waga$Wzrost > 170,])

#zadanie 3

mieszkania <- read.csv("C:/Users/Dudek/OneDrive/Pulpit/Repozytoria/Rachunek_prawdopodobienstwa_lab/Lab2/mieszkania.csv", sep = ';')
print(head(mieszkania, 6))
str(mieszkania)
sredni_metraz <- sum(mieszkania$Metraz)/length(mieszkania$Metraz)
srednia_cena <- sum(mieszkania$Cena)/length(mieszkania$Cena)
cena_za_metr <- mieszkania$Cena / mieszkania$Metraz
mieszkania$Cena_za_metr <- cena_za_metr
PsiePole_Cena_mniejsza_400000 <- mieszkania[mieszkania$Dzielnica =="Psie Pole" & mieszkania$Cena<400000, ]
Srodmiescie_powyzej60 <- mieszkania[mieszkania$Dzielnica == "Srodmiescie" & mieszkania$Metraz>60,]
ile_mieszkan_wiekszych_niz_60_tanszych_350000 <- nrow(mieszkania [mieszkania $Metraz > 60 & mieszkania $ Cena < 350000,])


sredni_metraz_do_ceny <- (mieszkania$Metraz / mieszkania $ Cena)
najlepsze_stosunek <- max(sredni_metraz_do_ceny)
indeks_najlepszego <- which(sredni_metraz_do_ceny == najlepsze_stosunek)
najkorzystniejsze <- mieszkania[indeks_najlepszego,]

rozne_dzielnice <- unique(mieszkania$Dzielnica)

dzielnice <- c()
for (d in rozne_dzielnice) {
  dzielnice <- c(dzielnice, list(mieszkania[mieszkania$Dzielnica == d,]) )
}

odchylenia <- c()
for (d in dzielnice ) {
  odchylenie_std <- sd(d$Cena)
  odchylenia<- c(odchylenia, odchylenie_std)
}

najkorzystniejsze_odchylenie = min(odchylenia)
najgorsze_odchylenie = max(odchylenia)

najstabilniejsza_dzielnica = rozne_dzielnice [ which( odchylenia == najkorzystniejsze_odchylenie  ) ]
najbardziej_zroznicowana_dzielnica = rozne_dzielnice [ which (odchylenia == najgorsze_odchylenie )] 

print(najbardziej_zroznicowana_dzielnica)
print(najstabilniejsza_dzielnica)

