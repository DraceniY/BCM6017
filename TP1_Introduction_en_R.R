# TP 1    Introduction en R      4 Juin 2018

# CHAPITRE 1 :
# Expression, valeurs logique, variables  :

1+1  
1:5
seq(1,5)
"Hello, world !" 
10 < 4 
T == TRUE
x <- 42
x /2
x 

#Fonctions : 

sum(1, 0 ,1)
sqrt(9)
racine_caree <- function(x) sqrt(x)
racine_caree(4)
help("function")

# Fichiers :
setwd("~/Documents")
list.files()
source("/usagers_rch/dbcm6000/DATA_local/BCM6017.R") 
file= read.table("/usagers_rch/dbcm6000/DATA_local/timecourse.txt" , header = T)
head(file)

# CHAPITRE 2 :
# Facteurs : 
marqueurs <- factor(c("RFLP", "AFLP", "RAPD"))      
head(marqueurs)
names(marqueurs) <- c("Human" , "Mouse" , "Drosophila")
head(marqueurs)
length(marqueurs)
marqueurs[3]
levels(marqueurs) <- c(levels(marqueurs), "SNP")
head(marqueurs)

# Vecteurs : 

c(4,3,2)
3:10 == seq(3,10)
seq(5,6, 0.5) 
5:9 
phrase <- c("Introduction" , "en" , "R")
phrase[3] 
phrase[4] <- "."
phrase[2:4]
rangs <- 1:3
names(rangs) <- c("premier", "second", "troisième")
rangs
rangs["premier"]
donnee <- c(4100, 5290, 8100)
names(donnee) <- c("Homo sapiens", "Mus musculus", "Heterocephalus glaber")
barplot(donnee , ylab = "Expression des protéines")
barplot(1:100)
a <- c(1, 2, 3 , 0)
a + 1
a/2
b <- c(4, 5, 6 ,3)
a + b
a-b
a == c(1, 99, 3 , 9)
a < b
x <- seq(1, 20, 0.1)
y <- sin(x)
values <- -10:10
absolutes <- abs(values)
plot(values, absolutes)
a <- c(1, 3, NA, 7, 19)
sum(a)

# CHAPITRE 3 :
# Matrices  :
matrix(0, 3, 4) #matrice de 3 lignes et 4 colonnes
plank <- 1:8
dim(plank) <- c(2, 4)
plank[2, 3]
plank[1, 4] <- 0
elevation <- matrix(1, 10, 10)
elevation[4, 6] <- 0
contour(elevation)
persp(elevation)

# CHAPITRE 4:
# Statistiques :
genome <- c(10, 5, 4, 3, 2)
names(genome) <- c('chr1', 'chr2', 'chr3', 'chr4', 'chr5')
mean(genome)
barplot(genome)
abline(h = mean(genome))
median(genome)

# CHAPITRE 5:
# Dataframe
gene <- c(300, 200, 100, 250, 150)
proteine <- c(9000, 5000, 12000, 7500, 18000)
cellule <- c('cartilage_cell', 'epithelial_cell', 'muscle_cell', 'nerve_cell', 'bone_cell')
data_1 <- data.frame(gene, proteine, cellule)
print(data_1)
data_1[[2]]
data_1$cellule
data_1[["cellule"]]

