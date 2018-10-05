install.packages("corrgram")
install.packages("ggplot2")
install.packages("psych")
install.packages("readxl")
install.packages("xlsx")

setwd("C:/Users/alcid/projetos_r/r_correlacao")
library(corrgram)
library(ggplot2)
library(psych)
library(readxl)
library(xlsx)

#Contagem de CELULAS
galgos <- read_excel("BetHistory.xls")[,-c(2,4,5,6,8,11,14)]
summary(galgos)
describe(galgos)
#View(galgos)
matriz_galgos <- cor(var(galgos, na.rm = TRUE))
print(matriz_galgos, digits = 2)
#View(matriz_galgos)
corrgram(matriz_galgos, type = "cor", lower.panel = panel.shade, upper.panel = panel.pie)
write.xlsx(matriz_galgos,file="matriz_galgos.xlsx")


# #Contagem de LCR
# LCR <- read_excel("Contagem LCR.xlsx")
# LCR <- LCR[,-c(1)]
# summary(LCR)
# describe(LCR)
# #View(LCR)
# MAT_LCR <- cor(var(LCR, na.rm = TRUE))
# print(MAT_LCR, digits = 2)
# #View(MAT_LCR)
# corrgram(MAT_LCR, type = "cor", lower.panel = panel.shade, upper.panel = panel.pie)
# write.xlsx(MAT_LCR,file="MAT_LCR.xlsx")
# 
# #Contagem LCC Manuscrito 2
# LCC <- read_excel("Contagem C?lulas Manuscrito II (inf e nec revisado) sem cd20 e tam les?o.xlsx")
# LCC <- LCC[,-c(1)]
# summary(LCC)
# describe(LCC)
# #View(LCC)
# MAT_LCC <- cor(var(LCC, na.rm = TRUE))
# print(MAT_LCC, digits = 2)
# #View(MAT_LCC)
# corrgram(MAT_LCC, type = "cor", upper.panel = NULL, lower.panel = panel.pie)
# write.xlsx(MAT_LCC,file="MAT_LCC.xlsx")