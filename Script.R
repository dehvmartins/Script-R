#Criar,exibir vetor e mostrar tamanho
vet<-c(2,4,6,8,10,12,14,16,18,20)
vet
length(vet)

#Transforma vetores em matriz
a<-vet1
b<-vet2
c<-vet3
novaMatriz<-cbind(a,b,c)

#Leitura de arquivo no worspace
arquivo<-read.table("nome_arquivo.txt",header=TRUE)

#Mostra o nome das colunas do arquivo
names(arquivo)

#####Testes Estatísticos#####

#Alpha de Conbrach
library(ltm)
cronbach.alpha(nome_arquivo[colunaInicio:colunaFim],standardized = TRUE, CI = FALSE,
probs = c(0.025, 0.975),B=1000,na.rm = FALSE)

#Regressão Múltipla
regressao<-lm(formula = log10(var_dependente ~ preditora1 + preditora2))
regressao
summary(regressao)


#Analise Fatorial Confirmatoria

library(matrixcalc)
library(sem)
library(psych)

variavel<-read.table("nome_arquivo.txt", header=TRUE)
names(variavel)
data.R<-cor(variavel)
data.R
cfa.model<-specifyModel("cfa_modelo.txt")
cfa.fit<-sem(cfa.model, data.R, numero_colunas)
modIndices(cfa.fit)
standardizedResiduals(cfa.fit)



