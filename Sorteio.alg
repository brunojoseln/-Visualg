algoritmo "Sorteio Loteria"
// Fun��o : Sortear 6 numeros aleatorios (1 ate 60),onde eles n�o se repetem e
//        : s�o exibidos em ordem crescente.
// Autor : Bruno Jos� 1�INFO
// Data : 7/11/2017
// Se��o de Declara��es
var

vetnum: vetor [0..5] de inteiro
i,j,temp: inteiro
op: caracter
inicio

limpatela
op <- "s"
repita
limpatela
   escreval
   escreval("-----------Sorteio Loteria ---------- ")
   escreval


   repita
      // Sorteio dos n�meros alet�rios
      para i de 0 ate 5 faca
         vetnum [i] <- randi (60) + 1
      fimpara


      //Ordena��o dos n�meros    Ordena��o por bolh (Bubble Sort)
      para i <- 0 ate 4 faca
         para j <- i+1 ate 5 faca
            se (vetnum [i] > vetnum [j]) entao
               temp <- vetnum [i]
               vetnum[i] <- vetnum[j]
               vetnum[j] <-temp
            fimse
         fimpara
      fimpara

      //Evitar repeti��es

      op<- "n"
      para i <-0 ate 4 faca
         se vetnum [i] = vetnum[i+1] entao
            op <-"s"
         fimse
      fimpara


   ate (op <> "s")


   //exibi��o na tela
   escreval("Os n�meros sorteados s�o: ")
   para i <- 0 ate 5 faca
      escreva (vetnum[i])
   fimpara

   escreval
   escreval


   repita
      escreva ("Quer rodar o programa novamente? [s/n]: ")
      leia (op)
   ate ((op = "s") ou (op = "n"))
   escreval
   escreval
   escreval ("----------Fim----------")
ate (op<>"s")

fimalgoritmo

