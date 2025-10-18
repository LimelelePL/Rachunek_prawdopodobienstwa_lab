#zad 1 ------------------------------------------------------------------------------
#i
a <- c(1, 4, 6, 13, -10, 8)
print(a)

b <- seq(from = 1, to = 101, by = 2) #seq to ciag arytmetyczny
print (b)

c <- rep(c(4,7,9), each = 3) #powtórz wektor (4,7,9) 3 razy
print(c)

d <- c("czy", "to", "jest", "wektor", NA) #NA to brak danych
print(d)

e <- c("czy", "to", "jest", "wektor", "NA")
print(e)

f <- rep(c(4, 7, 9), times = 6) 
print(f)


#ii) Dla każdego wektora korzystając z odpowiednich funkcji 
#podać długość, typ danych, element “najmniejszy” oraz “największy”, sumę elementów

#NA not available
#--a--
aLen <- length(a)
print(aLen)

aType <- typeof(a)
print(aType)

aMin <- min(a, na.rm = FALSE) 
print(aMin)

aMax <- max(a, na.rm = FALSE)
print(aMax)

aSum <- sum(a, na.rm = FALSE)
print(aSum)

#--b--
bLen <- length(b)
print(bLen)

bType <- typeof(b)
print(bType)

bMin <- min(b, na.rm = FALSE) 
print(bMin)

bMax <- max(b, na.rm = FALSE)
print(bMax)

bSum <- sum(b, na.rm = FALSE)
print(bSum)

#--c--

cLen <- length(c)
print(cLen)

cType <- typeof(c)
print(cType)

cMin <- min(c, na.rm = FALSE) 
print(cMin)

cMax <- max(c, na.rm = FALSE)
print(cMax)

cSum <- sum(c, na.rm = FALSE)
print(cSum)

#--d--

dLen <- length(d)
print(dLen)

dType <- typeof(d)
print(dType)

dMin <- min(d, na.rm = TRUE) 
print(dMin)

dMax <- max(d, na.rm = TRUE)
print(dMax)

dSum <- sum(d, na.rm = TRUE) # błąd bo typ char
print(dSum)

#---e---

eLen <- length(e)
print(eLen)

eType <- typeof(e)
print(eType)

eMin <- min(e, na.rm = FALSE)
print(eMin)

eMax <- max(e, na.rm = FALSE)
print(eMax)

eSum <- sum(e, na.rm = FALSE) # błąd bo typ char
print(eSum)

#--f--

fLen <- length(f)
print(fLen)

fType <- typeof(f)
print(fType)

fMin <- min(f, na.rm = FALSE)
print(fMin)

fMax <- max(f, na.rm = FALSE)
print(fMax)

fSum <- sum(f, na.rm = FALSE)
print(fSum)

# III Posortować wektory d) oraz e)

dSorted <- sort(d, decreasing = FALSE)
print(dSorted)

eSorted <- sort(e, decreasing = FALSE)
print(eSorted)

#IV Wyznaczyć a) a+f, b) a*f, c) a+c, d) a+10, e) 15a f) 26-ty element wektora b, 
#g) 6-ty do 10-tego elementu (włącznie) wektora f.

aPlusF <- a + f
print(aPlusF)

aMulF <- a * f
print(aMulF)

aPlusC <- a + c #tutaj bedzie zawijanie
print(aPlusC)

aPlus10 <- a + 10
print(aPlus10)

f15a <- 15 * a
print(f15a)

b26th <- b[26]
print(b26th)

fFrom6To10 <- f[6:10]
print(fFrom6To10)

#v) Które elementy w wektorze b, oraz ile, jest większe niż 50?

whichLargestThan50B <- b[which(b > 50)]
print(whichLargestThan50B)

howManyLargestThan50B <- length(b[which(b>50)])
print(howManyLargestThan50B)

#zad 2 -----------------------------------------------------------------------------------------------------

aMatrix <- matrix( c(3,4,1,5,2,3), nrow = 2, ncol=3, byrow = FALSE )
print(aMatrix)

bMatrix <- matrix(c(-1,3,-5,2,-4,6), nrow = 3, ncol = 2, byrow = FALSE)
print(bMatrix)

cMatrix <- matrix(c(7,2,3,1), nrow = 2, ncol = 2, byrow = FALSE)
print(cMatrix)

dMatrix <- matrix(c(1,3,5,2,5,7,4,7,11), nrow = 3, ncol = 3, byrow = FALSE)
print(dMatrix)

#ii) Wyznaczyć a) A+B, b) A+BT, c) AB d) A*A, e) D-1, f) DD-1
# mnożenie macieży * to mnozenie element po elemencie
# iloczyn macierzy %*% to iloczyn z algebyr

APlusB <- aMatrix + bMatrix # nie mozna dodać macierzy o niezgodnych rozmiarach
print(APlusB)

APlusBTranspositin <- aMatrix + t(bMatrix) 
print(APlusBTranspositin)

AmultB <- aMatrix %*% bMatrix #niezgodne rozmiary
print(AmultB)

AmultA <- aMatrix * aMatrix 
print(AmultA)

DRev <- solve(dMatrix)
print(DRev)

DmultDrev <- dMatrix %*% solve(dMatrix)
print(DmultDrev)

#iii) Rozwiązać równania a) CX = A, b) XD=A

solutionA <- solve(cMatrix) %*% aMatrix
print(solutionA)

solutionB <- aMatrix %*% solve(dMatrix)
print(solutionB)

#zad 3 --------------------------------------------------------------------------------------------

a3 <- 300:0
print(a3)

b3 <- c("one", "two", "three", "four" , 5) #bedzie to wektor stringów bo R nie pozwala na mieszanie typow
print(b3)

c3 <- c("one", "two", "three", "four" , "5")
print(c3)

d3 <- rep(c(3,1,6), times = 4)
print (d3)

e3 <- rep(c(3,1,6), each = 4)
print(e3)

f3 <- c(5,1,4,7)
print(f3)

#Dla każdego wektora korzystając z odpowiednich funkcji podać
#długość, typ danych, element “najmniejszy” oraz “największy”, sumę.

# --- a3 ---
a3Length <- length(a3)
print(a3Length)

a3Type <- typeof(a3)
print(a3Type)

a3Min <- min(a3, na.rm = FALSE)
print(a3Min)

a3Max <- max(a3, na.rm = FALSE)
print(a3Max)

a3Sum <- sum(a3, na.rm = FALSE)
print(a3Sum)


# --- b3 ---
b3Length <- length(b3)
print(b3Length)

b3Type <- typeof(b3)
print(b3Type)

b3Min <- min(b3, na.rm = FALSE)
print(b3Min)

b3Max <- max(b3, na.rm = FALSE)
print(b3Max)

b3Sum <- sum(b3, na.rm = FALSE)
print(b3Sum)


# --- c3 ---
c3Length <- length(c3)
print(c3Length)

c3Type <- typeof(c3)
print(c3Type)

c3Min <- min(c3, na.rm = FALSE)
print(c3Min)

c3Max <- max(c3, na.rm = FALSE)
print(c3Max)

c3Sum <- sum(c3, na.rm = FALSE)
print(c3Sum)


# --- d3 ---
d3Length <- length(d3)
print(d3Length)

d3Type <- typeof(d3)
print(d3Type)

d3Min <- min(d3, na.rm = FALSE)
print(d3Min)

d3Max <- max(d3, na.rm = FALSE)
print(d3Max)

d3Sum <- sum(d3, na.rm = FALSE)
print(d3Sum)


# --- e3 ---
e3Length <- length(e3)
print(e3Length)

e3Type <- typeof(e3)
print(e3Type)

e3Min <- min(e3, na.rm = FALSE)
print(e3Min)

e3Max <- max(e3, na.rm = FALSE)
print(e3Max)

e3Sum <- sum(e3, na.rm = FALSE)
print(e3Sum)


# --- f3 ---
f3Length <- length(f3)
print(f3Length)

f3Type <- typeof(f3)
print(f3Type)

f3Min <- min(f3, na.rm = FALSE)
print(f3Min)

f3Max <- max(f3, na.rm = FALSE)
print(f3Max)

f3Sum <- sum(f3, na.rm = FALSE)
print(f3Sum)


#Posortować wektory b) oraz e)
b3Sorted <- sort(b3, decreasing = FALSE)
print(b3Sorted)

e3Sorted <- sort(e3, decreasing = TRUE)
print(e3Sorted)

#iv) Wyznaczyć a) d+f, b) iloczyn skalarny d∘e (wskazówka: należy zsumować iloczyn odpowiadających sobie elementów),
#c) 35-ty element wektora a, d) 67-ty do 85-tego elementu wektora a. e*) iloczyn wektorowy d  e 

d2PlusF3 <- d3 + f3
print(d2PlusF3)

d3MultE3 <- sum(d3*e3, na.rm = FALSE)
print(d3MultE3)

a3Elem35th <- a3[35]
print(a3Elem35th)

a3Elems67thTo85Th <- a3[67:85]
print(a3Elems67thTo85Th)


# a = (a1,a2,a3) b=(b1,b2,b3) bo iloczyn wektorowy musi byc w 3 wymiarach
#          | i  j  k 
# axb = det| a1 a2 a3| = ( det( a2 a3 ), -det( a1  a3 ), det ( a1 a2 ) ) 
#          | b1 b2 b3|          b2 b3          b1  b3          b1 b2
#wynikiem bedzie macierz 4 wektorów tutaj gdzie kazdy wektor to iloczyn wektorowy wektorów anxbn

blocks <- length(d3) / 3
result <- matrix(NA, nrow = blocks, ncol = 3)

for (i in 1:blocks) {
  #wybieramy odpowiednie trójki z wektorów d3 i e3 
  a <- d3[((i - 1) * 3 + 1):(i * 3)]
  b <- e3[((i - 1) * 3 + 1):(i * 3)]
  # a ze wzoru wyzej a=(a1,a2,a3)
  # b ze wzoru wyzej b=(b1,b2,b3)
  
  x <- det(matrix(c(a[2], a[3], b[2], b[3]), nrow = 2))
  y <- -det(matrix(c(a[1], a[3], b[1], b[3]), nrow = 2))
  z <- det(matrix(c(a[1], a[2], b[1], b[2]), nrow = 2))
  
  result[i, ] <- c(x, y, z)
}

print(result)

#v) Które elementy w wektorze a, oraz ile, jest mniejsze niż 100?
whichLessThan100a3 <- a3[which(a3 < 100)]
print(whichLessThan100a3)
howManyLessTahan100a3 <- length(a3[which(a3 < 100)])
print(howManyLessTahan100a3)

#zadanie 4 ------------------------------------------------------------------------------------
a4Matrix = matrix( c(-3,4,1,-5,-2,3), ncol = 3)
print(a4Matrix)

b4Matrix = matrix( 1:6, ncol = 2, byrow = TRUE)
print(b4Matrix)

c4Matrix = matrix (c(7,-2,-3,1), ncol = 2)
print(c4Matrix)

d4Matrix = matrix (c(1,3,2,2,5,3,4,7,2), ncol = 3)
print(d4Matrix)

#ii) Wyznaczyć a) A+B, b) AT+B, c) BA, d) B*B, e) C-1, f) CC-1
A4plusB4 = a4Matrix + b4Matrix #niezgodne rozmiary
print(A4plusB4)

A4TrPlusB4 = t(a4Matrix) + b4Matrix
print(A4TrPlusB4)

B4multA4 = b4Matrix %*% a4Matrix
print(B4multA4)

B4multB4 = b4Matrix*b4Matrix
print(B4multB4)

C4Rev = solve(c4Matrix)
print(C4Rev)

C4multC4Rev = c4Matrix%*%solve(c4Matrix)
print(C4multC4Rev) #dziwny wynik przez przyblizenia komputera 

#iii) Rozwiązać równania a) XC = B, b) DX=B
solutionA4 = b4Matrix %*% solve(c4Matrix)
solutionB4 = solve(d4Matrix) %*% b4Matrix

print(solutionA4)
print(solutionB4)

