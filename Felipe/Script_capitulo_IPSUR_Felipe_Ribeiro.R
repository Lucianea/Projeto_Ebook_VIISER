## OBSERVAÇÃO: PARA USUÁRIOS DE WINDOWS, INSTALAR PREVIAMENTE O PROGRAMA RTOOLS.

## INSTALANDO PACOTES DO REPOSITÓRIO CRAN REFERENCIADOS NO IPSUR:
install.packages(c("actuar", "aplpack", "binom", "boot", "coin", "diagram",
                   "distrEx", "e1071", "emdbook", "ggplot2", "HH", "Hmisc",
                   "lmtest", "mvtnorm", "qcc", "reshape", "RcmdrMisc",
                   "scatterplot3d", "TeachingDemos", "vcd"))

## INSTALAÇÃO DO PACOTE prob, QUE NÃO ESTÁ MAIS NO REPOSITÓRIO CRAN:
install.packages("combinat")  # combinat é uma dependência do pacote prob
install.packages("devtools")  # caso devtools não esteja instalado ainda
devtools::install_github("gjkerns/prob")

## FINALIZANDO INSTALAÇÃO DO PACOTE IPSUR:
devtools::install_github("gjkerns/IPSUR")

## INSTALAÇÃO DO PACOTE RcmdrPlugin.IPSUR:
devtools::install_github("gjkerns/RcmdrPlugin.IPSUR")

## CARREGANDO PACOTE IPSUR:
library(IPSUR)

## ACESSANDO LIVRO "Introduction to Probability and Statistics Using R":
read(IPSUR)

## EXEMPLOS pbirthday.ipsur:
pbirthday.ipsur(10)
pbirthday.ipsur(23)
pbirthday.ipsur(30)
pbirthday.ipsur(40)
pbirthday.ipsur(50)
pbirthday.ipsur(100)
pbirthday.ipsur(120)
options(digits=22)
pbirthday.ipsur(120)

## EXEMPLOS qbirthday.ipsur:
qbirthday.ipsur(0.25)
qbirthday.ipsur(0.50)
qbirthday.ipsur(0.75)
qbirthday.ipsur(0.90)
qbirthday.ipsur(0.95)
qbirthday.ipsur(0.99)
qbirthday.ipsur(1)

## GERANDO A FIGURA 1:
g <- Vectorize(pbirthday.ipsur)
plot(1:50, g(1:50), xlab = 'Número de pessoas na sala',
     ylab = 'P("pelo menos um empate de datas de aniversário")',
     pch=21, bg='steelblue', col='blue',cex.lab=1.25, cex.axis=1.25)
abline(h = 0.5)
abline(v = 23, lty = 2)
remove(g)

## INSTALAÇÃO DO PACOTE Rcmdr:
install.packages("Rcmdr")

## CARREGANDO O PACOTE Rcmdr (na interface R Commander, acessar o menu Ferramentas > 
## Carregar plug-in(s) do Rcmdr para carregar o pacote RcmdrPlugin.IPSUR):
library(Rcmdr)

## CARREGANDO O PACOTE RcmdrPlugin.IPSUR diretamente pelo Console (em uma sessão do R na 
## qual o pacote Rcmdr ainda não foi carregado ou com a janela R Commander aberta):
library(RcmdrPlugin.IPSUR)
