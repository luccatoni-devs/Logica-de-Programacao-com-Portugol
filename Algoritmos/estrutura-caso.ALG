Algoritmo "estrutura caso"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Lucca Toni
// Data atual  : 19/06/2024
Var
// Se��o de Declara��es das vari�veis 
Nome: Caracter
Sal, Nsal: Real
DeP: Inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
   Escreva ("Nome do caba: ")
   Leia(Nome)
   Escreva ("Salario do caba? R$")
   Leia(Sal)
   Escreva ("Dependentes do caba: ")
   Leia(DeP)
   Escolha Dep
           Caso 0
                Nsal <- Sal + (Sal*5/100)
           Caso 1, 2, 3
                Nsal <- Sal + (Sal*10/100)
           Caso 4, 5, 6
                Nsal <- Sal + (Sal*15/100)
           OutroCaso
                Nsal <- Sal + (Sal*18/100)
   FimEscolha
   EscrevaL ("Novo salario do ", Nome, " � R$", Nsal:5:2)
Fimalgoritmo