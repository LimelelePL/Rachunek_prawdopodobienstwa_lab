#zad 1 ------------------------------------------------------------------------------
#i
a <- c(1, 4, 6, 13, -10, 8)
b <- seq(from = 1, to = 101, by = 2)
c <- rep(c(4,7,9), each = 3)
d <- c("czy", "to", "jest", "wektor", NA)
e <- c("czy", "to", "jest", "wektor", "NA")
f <- rep(c(4, 7, 9), times = 6)

#ii) Dla każdego wektora korzystając z odpowiednich funkcji 
#podać długość, typ danych, element “najmniejszy” oraz “największy”, sumę elementów

#NA not available
aLen <- length(a)
aType <- typeof(a)
aMin <- min(a, na.rm = FALSE) #na.rm - not availavle remove
aMax <- max(a, na.rm = FALSE)
aSum <- sum(a, na.rm = FALSE)

bLen <- length(b)
bType <- typeof(b)
bMin <- min(b, na.rm = FALSE) #na.rm - not availavle remove
bMax <- max(b, na.rm = FALSE)
bSum <- sum(b, na.rm = FALSE)

cLen <- length(c)
cType <- typeof(c)
cMin <- min(c, na.rm = FALSE) #na.rm - not availavle remove
cMax <- max(c, na.rm = FALSE)
cSum <- sum(c, na.rm = FALSE)

dLen <- length(d)
dType <- typeof(d)
dMin <- min(d, na.rm = TRUE) #na.rm - not availavle remove
dMax <- max(d, na.rm = TRUE)
dSum <- sum(d, na.rm = TRUE)

eLen <- length(e)
eType <- typeof(e)
eMin <- min(e, na.rm = FALSE) #na.rm - not availavle remove
eMax <- max(e, na.rm = FALSE)
eSum <- sum(e, na.rm = FALSE)

# III Posortować wektory d) oraz e)

dSorted <- sort(d, decreasing = FALSE)
eSorted <- sort(e, decreasing = FALSE)

#IV Wyznaczyć a) a+f, b) a*f, c) a+c, d) a+10, e) 15a f) 26-ty element wektora b, 
#g) 6-ty do 10-tego elementu (włącznie) wektora f.

aPlusF <- a + f
aMulF <- a * f
aPlusC <- a + c
aPlus10 <- a + 10
f15a <- 15 * a
b26th <- b[26]
fFrom6To10 <- f[6:10]

#v) Które elementy w wektorze b, oraz ile, jest większe niż 50?

whichLargestThan50B <- b > 50
howManyLargestThan50B <- sum( b > 50, na.rm = FALSE)

#zad 2 -----------------------------------------------------------------------------------------------------

aMatrix <- matrix( c(3,4,1,5,2,3), nrow = 2, ncol=3, byrow = FALSE )
bMatrix <- matrix(c(-1,3,-5,2,-4,6), nrow = 3, ncol = 2, byrow = FALSE)
cMatrix <- matrix(c(7,2,3,1), nrow = 2, ncol = 2, byrow = FALSE)
dMatrix <- matrix(c(1,3,5,2,5,7,4,7,11), nrow = 3, ncol = 3, byrow = FALSE)

#ii) Wyznaczyć a) A+B, b) A+BT, c) AB d) A*A, e) D-1, f) DD-1

APlusB <- aMatrix + bMatrix
APlusBTranspositin <-aMatrix + t(bMatrix) 
AmultB <- A %*% B
AmultA <- A %*% A
DRev <- solve(D)
DmultDrev <- D %*% solve(D)

#iii) Rozwiązać równania a) CX = A, b) XD=A

solutionA = solve(C) %*% A
solutionB = A %*% solve(D)

#zad 3 --------------------------------------------------------------------------------------------






