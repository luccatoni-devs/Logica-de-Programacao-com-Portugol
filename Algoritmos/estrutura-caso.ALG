Algoritmo "estrutura caso"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Lucca Toni
// Data atual  : 19/06/2024
Var
// Seção de Declarações das variáveis 
Nome: Caracter
Sal, Nsal: Real
DeP: Inteiro
Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
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
   EscrevaL ("Novo salario do ", Nome, " é R$", Nsal:5:2)
Fimalgoritmo