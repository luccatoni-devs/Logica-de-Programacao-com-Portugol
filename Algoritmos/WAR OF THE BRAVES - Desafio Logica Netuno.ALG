Algoritmo "War Of The Braves"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Descri��o   : Algoritmo baseado em um jogo RPG, em que o user se cadastra, faz login, escolhe sua classe, sua ferramenta, personaliza seu avatar, decide uma montaria e no final verifica suas informa��es na tela.
// Autor(a)    : Lucca Toni
// Data atual  : 05/07/2024
Var
   Data_Atual, Data_Nasc: Vetor[1..3] de Inteiro
   Caracteristica_Avatar: Vetor[1..5] de Caracter
   Nome_User, Email_User, Senha_User, Confirma_Senha, Confirma_Login, Email_Login, Senha_Login, Classe, Ferramenta, Confirma_Personalizar, Confirma_Montaria, Montaria, Vida, Mana, Vel_Atk, Vel_Montaria, Descanso_Montaria, Confirma_Informacoes: Caracter
   Tentativa, Classe_Escolha, Personalizar_Escolha, Opcao_Cor_Cabelo, Opcao_Cor_Pele, Opcao_Cor_Olhos, Opcao_Tipo_Corpo, Loop_Personalizar, Montaria_Escolha: Inteiro
   Login_Sucesso: Logico
   // Aqui fiz um procedimento para ser a tela do jogo.
   Procedimento Tela_Jogo()
   Inicio
         EscrevaL ("|-------------------------------------|")
         EscrevaL ("|----------War Of The Braves----------|")
         EscrevaL ("|-------------------------------------|")
         EscrevaL ("")
   FimProcedimento
   // Este procedimento � o menu das escolhas de personaliza��o.
   Procedimento Personalizar()
   Inicio
          EscrevaL ("Escolha o que deseja personalizar:")
          EscrevaL ("[1] Cor da pele")
          EscrevaL ("[2] Cor do cabelo")
          EscrevaL ("[3] Cor dos olhos")
          EscrevaL ("[4] Tipo de corpo")
          EscrevaL ("[5] A altura (em cm)")
          Leia (Personalizar_Escolha)
          Enquanto (Personalizar_Escolha > 5) ou (Personalizar_Escolha < 1)  faca
             EscrevaL ("Op��o inv�lida. Escolha Novamente:")
             Leia (Personalizar_Escolha)
          FimEnquanto
   FimProcedimento
   // Neste procedimento est�o as op��es de customiza��o de avatar.
   Procedimento Caracteristicas()
   Inicio
         Escolha Personalizar_Escolha
            Caso 1
               EscrevaL ("Escolha a cor da pele:")
               EscrevaL ("[1] Muito clara")
               EscrevaL ("[2] Clara")
               EscrevaL ("[3] M�dia")
               EscrevaL ("[4] Morena")
               EscrevaL ("[5] Negra")
               Leia (Opcao_Cor_Pele)
               Enquanto (Opcao_Cor_Pele > 5) ou (Opcao_Cor_Pele < 1)  faca
                  EscrevaL ("Cor da pele inv�lida. Escolha Novamente:")
                  Leia (Opcao_Cor_Pele)
               FimEnquanto
               Escolha Opcao_Cor_Pele
                  Caso 1
                       Caracteristica_Avatar[1] <- "Muito clara"
                  Caso 2
                       Caracteristica_Avatar[1] <- "Clara"
                  Caso 3
                       Caracteristica_Avatar[1] <- "M�dia"
                  Caso 4
                       Caracteristica_Avatar[1] <- "Morena"
                  Caso 5
                       Caracteristica_Avatar[1] <- "Negra"
              FimEscolha
            Caso 2
               EscrevaL ("Escolha a cor do cabelo:")
               EscrevaL ("[1] Preto")
               EscrevaL ("[2] Castanho")
               EscrevaL ("[3] Loiro")
               EscrevaL ("[4] Ruivo")
               EscrevaL ("[5] Grisalho")
               EscrevaL ("[6] Branco")
               Leia (Opcao_Cor_Cabelo)
               Enquanto (Opcao_Cor_Cabelo > 6) ou (Opcao_Cor_Cabelo < 1)  faca
                  EscrevaL ("Cor de cabelo inv�lido. Escolha Novamente:")
                  Leia (Opcao_Cor_Cabelo)
               FimEnquanto
               Escolha Opcao_Cor_Cabelo
                  Caso 1
                       Caracteristica_Avatar[2] <- "Preto"
                  Caso 2
                       Caracteristica_Avatar[2] <- "Castanho"
                  Caso 3
                       Caracteristica_Avatar[2] <- "Loiro"
                  Caso 4
                       Caracteristica_Avatar[2] <- "Ruivo"
                  Caso 5
                       Caracteristica_Avatar[2] <- "Grisalho"
                  Caso 6
                       Caracteristica_Avatar[2] <- "Branco"
               FimEscolha
            Caso 3
               EscrevaL ("Escolha a cor dos olhos:")
               EscrevaL ("[1] Castanho")
               EscrevaL ("[2] Azul")
               EscrevaL ("[3] Verde")
               EscrevaL ("[4] Cinza")
               EscrevaL ("[5] Preto")
               Leia (Opcao_Cor_Olhos)
               Enquanto (Opcao_Cor_Olhos > 5) ou (Opcao_Cor_Olhos < 1)  faca
                  EscrevaL ("Cor dos olhos inv�lida. Escolha Novamente:")
                  Leia (Opcao_Cor_Olhos)
               FimEnquanto
               Escolha (Opcao_Cor_Olhos)
                  Caso 1
                       Caracteristica_Avatar[3] <- "Castanho"
                  Caso 2
                       Caracteristica_Avatar[3] <- "Azul"
                  Caso 3
                       Caracteristica_Avatar[3] <- "Verde"
                  Caso 4
                       Caracteristica_Avatar[3] <- "Cinza"
                  Caso 5
                       Caracteristica_Avatar[3] <- "Preto"
               FimEscolha
            Caso 4
               EscrevaL ("Escolha o tipo de corpo:")
               EscrevaL ("[1] Magro")
               EscrevaL ("[2] Atl�tico")
               EscrevaL ("[3] M�dio")
               EscrevaL ("[4] Musculoso")
               EscrevaL ("[5] Robusto")
               Leia (Opcao_Tipo_Corpo)
               Enquanto (Opcao_Tipo_Corpo > 5) ou (Opcao_Tipo_Corpo < 1)  faca
                  EscrevaL ("Tipo de corpo inv�lido. Escolha Novamente:")
                  Leia (Opcao_Tipo_Corpo)
               FimEnquanto
               Escolha (Opcao_Tipo_Corpo)
                  Caso 1
                       Caracteristica_Avatar[4] <- "Magro"
                  Caso 2
                       Caracteristica_Avatar[4] <- "Atl�tico"
                  Caso 3
                       Caracteristica_Avatar[4] <- "M�dio"
                  Caso 4
                       Caracteristica_Avatar[4] <- "Musculoso"
                  Caso 5
                       Caracteristica_Avatar[4] <- "Robusto"
               FimEscolha
            Caso 5
               EscrevaL ("Digite a altura (em cm):")
               Leia (Caracteristica_Avatar[5])
         FimEscolha
   FimProcedimento

Inicio
   Data_Atual[1] <- 05
   Data_Atual[2] <- 07
   Data_Atual[3] <- 2024

   Tela_Jogo()
   EscrevaL ("----------Cadastro----------")
   Escreva ("Digite seu nome: ")
   Leia (Nome_User)
   Escreva ("Digite o dia de seu nascimento(DD): ")
   Leia (Data_Nasc[1])
   Escreva ("Digite o m�s de seu nascimento(MM): ")
   Leia (Data_Nasc[2])
   Escreva ("Digite o ano de seu nascimento(AAAA): ")
   Leia (Data_Nasc[3])
   // Implantei uma l�gica nesta estrutura condicional em que o usu�rio s� poder� jogar se realmente j� tiver completado a maioridade.
   Se (Data_Atual[3] - Data_Nasc[3] < 18) ou ((Data_Atual[3] - Data_Nasc[3] >= 18) e (Data_Atual[2] < Data_Nasc[2])) ou ((Data_Atual[3] - Data_Nasc[3] >= 18) e (Data_Atual[2] <= Data_Nasc[2]) e (Data_Atual[1] < Data_Nasc[1]))entao
      EscrevaL ("Voc� n�o tem 18 anos ainda. Complete a maioridade e volte para jogar.")
      FimAlgoritmo
   Senao
      EscrevaL ("Voc� tem 18 anos ou mais. Vamos para as pr�ximas etapas!" )
   FimSe
   Escreva ("Digite seu email: ")
   Leia (Email_User)
   Escreva ("Crie uma senha: ")
   Leia (Senha_User)
   Escreva ("Confirme sua senha: ")
   Leia (Confirma_Senha)
   // La�o de repeti��o para detectar se as senhas coincidem.
   Enquanto (Confirma_Senha <> Senha_User) faca
       Se (Confirma_Senha <> Senha_User) entao
          EscrevaL ("Senha Incorreta.")
          EscrevaL ("Confirme sua senha Novamente: ")
          Leia (Confirma_Senha)
       FimSe
   FimEnquanto
   EscrevaL ("Senha Confirmada.")
   EscrevaL ("Seu cadastro foi realizado!")
   EscrevaL ("Deseja ir para tela de login? [S/N]")
   Leia (Confirma_Login)
   Se (Confirma_Login = "S") ou (Confirma_Login = "s") entao
      LimpaTela
   Senao
      Fimalgoritmo
   FimSe
   Tela_Jogo()
   EscrevaL ("----------Login----------")
   Escreva ("Email: ")
   Leia (Email_Login)
   Escreva ("Senha: ")
   Leia (Senha_Login)
   // Se o usu�rio ultrapassar 3 tentativas de login, o algoritmo encerra.
   Tentativa <- 0
   Enquanto (Tentativa < 3) e (Login_Sucesso = Falso) faca
    Se (Email_Login <> Email_User) ou (Senha_Login <> Senha_User) entao
        EscrevaL ("Email ou Senha Incorretos.")
        Escreva ("Digite seu email novamente: ")
        Leia (Email_Login)
        Escreva ("Digite sua senha novamente: ")
        Leia (Senha_Login)
        Tentativa <- Tentativa + 1
    Senao
        EscrevaL ("Login realizado!")
        Login_Sucesso <- Verdadeiro
    FimSe
    FimEnquanto
    Se (Login_Sucesso = Falso) entao
       EscrevaL ("N�mero de tentativas excedido.")
       FimAlgoritmo
    FimSe
    LimpaTela
    Tela_Jogo()
    EscrevaL ("Escolha a classe Para jogar:")
    EscrevaL ("[1] Paladino [Lan�a ou Escudo]")
    EscrevaL ("[2] Atirador [Arma]")
    EscrevaL ("[3] Guerreiro [Espada e Escudo]")
    EscrevaL ("[4] B�rbaro [Machado ou Marreta]")
    EscrevaL ("[5] Arqueiro [Arco e Flecha]")
    Leia (Classe_Escolha)
    // Estrutura de repeti��o caso o usu�rio digite um valor inv�lido.
    Enquanto (Classe_Escolha > 5) ou (Classe_Escolha < 1)  faca
       EscrevaL ("Classe inv�lida. Escolha Novamente:")
       Leia (Classe_Escolha)
    FimEnquanto
    Escolha Classe_Escolha
       Caso 1
            Classe <- "Paladino"
            Vida <- "85/100"
            Mana <- "35/50"
            Vel_Atk <- "1.25"
            EscrevaL ("Voc� escolheu o Paladino.")
            EscrevaL ("Sua vida: ", Vida, ". Sua mana: ", Mana, ". Sua velocidade de ataque: ", Vel_Atk)
            EscrevaL ("Lan�a ou Escudo? ")
            Leia (Ferramenta)
            //Estrutura de repeti��o com condicional para confirmar a ferramenta do usu�rio.
            Enquanto (Ferramenta <> "Lan�a") e (Ferramenta <> "Lan�a") e (Ferramenta <> "Escudo") e (Ferramenta <> "escudo") faca
               EscrevaL ("Ferramenta Inv�lida. Escolha entre Lan�a ou Escudo:")
               Leia (Ferramenta)
            FimEnquanto
            Se (Ferramenta = "Lan�a") ou (Ferramenta = "lan�a") entao
               Ferramenta <- "Lan�a"
            Senao
               Se (Ferramenta = "Escudo") ou (Ferramenta = "escudo") entao
                  Ferramenta <- "Escudo"
               FimSE
            FimSe
            EscrevaL ("Confirmado!")
       Caso 2
            Classe <- "Atirador"
            Vida <- "55/100"
            Mana <- "40/50"
            Vel_Atk <- "0.85"
            Ferramenta <- "Arma"
            EscrevaL ("Voc� escolheu o Atirador.")
            EscrevaL ("Sua vida: ", Vida, ". Sua mana: ", Mana, ". Sua velocidade de ataque: ", Vel_Atk)
       Caso 3
            Classe <- "Guerreiro"
            Vida <- "90/100"
            Mana <- "30/50"
            Vel_Atk <- "1.00"
            Ferramenta <- "Espada e Escudo"
            EscrevaL ("Voc� escolheu o Guerreiro!")
            EscrevaL ("Sua vida: ", Vida, ". Sua mana: ", Mana, ". Sua velocidade de ataque: ", Vel_Atk)
       Caso 4
            Classe <- "B�rbaro"
            Vida <- "100/100"
            Mana <- "20/50"
            Vel_Atk <- "2.00"
            EscrevaL ("Voc� escolheu o B�rbaro.")
            EscrevaL ("Sua vida: ", Vida, ". Sua mana: ", Mana, ". Sua velocidade de ataque: ", Vel_Atk)
            EscrevaL ("Machado ou Marreta? ")
            Leia (Ferramenta)
            Enquanto (Ferramenta <> "Machado") e (Ferramenta <> "machado") e (Ferramenta <> "Marreta") e (Ferramenta <> "marreta") faca
               EscrevaL ("Ferramenta Inv�lida. Escolha entre Machado ou Marreta:")
               Leia (Ferramenta)
            Se (Ferramenta = "Machado") ou (Ferramenta = "machado") entao
               Ferramenta <- "Machado"
            Senao
               Se (Ferramenta = "Marreta") ou (Ferramenta = "marreta") entao
                  Ferramenta <- "Marreta"
               FimSE
            FimSe
            EscrevaL ("Confirmado!")
       Caso 5
            Classe <- "Arqueiro"
            Vida <- "50/100"
            Mana <- "50/50"
            Vel_Atk <- "1.50"
            Ferramenta <- "Arco e Flecha"
            EscrevaL ("Voc� escolheu o Arqueiro")
            EscrevaL ("Sua vida: ", Vida, ". Sua mana: ", Mana, ". Sua velocidade de ataque: ", Vel_Atk)
    FimEscolha
    EscrevaL ("Deseja ir para a personaliza��o de avatar? [S/N]")
    Leia (Confirma_Personalizar)
    Se (Confirma_Personalizar = "S") ou (Confirma_Personalizar = "s") entao
       LimpaTela
    Senao
       FimAlgoritmo
    FimSe
    // Utilizando a estrutura repita, dei para o usu�rio a oportunidade de escolher a personaliza��o na ordem desejada, at� 5 op��es no caso.
    Loop_Personalizar <- 0
    Tela_Jogo()
    Repita
       Personalizar()
       Caracteristicas()
       LimpaTela
       Loop_Personalizar <- Loop_Personalizar + 1
    Ate (Loop_Personalizar = 5)
    // Se o usu�rio n�o personalizar, ou tiver mudado alguma op��o j� selecionada, por padr�o, as vari�veis recebem estes valores.
    Se (Caracteristica_Avatar[1] = "") entao
       Caracteristica_Avatar[1] <- "Muito clara"
    FimSe
    Se (Caracteristica_Avatar[2] = "") entao
       Caracteristica_Avatar[2] <- "Preto"
    FimSe
    Se (Caracteristica_Avatar[3] = "") entao
       Caracteristica_Avatar[3] <- "Castanho"
    FimSe
    Se (Caracteristica_Avatar[4] = "") entao
       Caracteristica_Avatar[4] <- "Magro"
    FimSe
    Se (Caracteristica_Avatar[5] = "") entao
       Caracteristica_Avatar[5] <- "180"
    FimSe
    EscrevaL ("Deseja ir para a escolha de montaria? [S/N]")
    Leia (Confirma_Montaria)
    Se (Confirma_Montaria = "S") ou (Confirma_Montaria = "s") entao
       LimpaTela
    Senao
       FimAlgoritmo
    FimSe
    Tela_Jogo()
    EscrevaL ("Escolha Sua Montaria:")
    EscrevaL ("[1] Pegasus")
    EscrevaL ("[2] Quimera")
    EscrevaL ("[3] C�rbero")
    EscrevaL ("[4] F�nix")
    EscrevaL ("[5] Drag�o")
    Leia (Montaria_Escolha)
    // Estrutura de repeti��o caso o usu�rio digite um valor inv�lido.
    Enquanto (Montaria_Escolha > 5) ou (Montaria_Escolha < 1)  faca
       EscrevaL ("Montaria inv�lida. Escolha Novamente:")
       Leia (Montaria_Escolha)
    FimEnquanto
    Escolha Montaria_Escolha
       Caso 1
            Montaria <- "Pegasus"
            Vel_Montaria <- "10m/s"
            Descanso_Montaria <- "2 min"
            EscrevaL ("Voc� escolheu o Pegasus")
            EscrevaL ("Velocidade de sua montaria: ", Vel_Montaria, ". Seu tempo de descanso: ", Descanso_Montaria)
       Caso 2
            Montaria <- "Quimera"
            Vel_Montaria <- "8m/s"
            Descanso_Montaria <- "1 min"
            EscrevaL ("Voc� escolheu a Quimera.")
            EscrevaL ("Velocidade de sua montaria: ", Vel_Montaria, ". Seu tempo de descanso: ", Descanso_Montaria)
       Caso 3
            Montaria <- "C�rbero"
            Vel_Montaria <- "12m/s"
            Descanso_Montaria <- "3 min"
            EscrevaL ("Voc� escolheu o C�rbero.")
            EscrevaL ("Velocidade de sua montaria: ", Vel_Montaria, ". Seu tempo de descanso: ", Descanso_Montaria)
       Caso 4
            Montaria <- "F�nix"
            Vel_Montaria <- "15m/s"
            Descanso_Montaria <- "5 min"
            EscrevaL ("Voc� escolheu a F�nix.")
            EscrevaL ("Velocidade de sua montaria: ", Vel_Montaria, ". Seu tempo de descanso: ", Descanso_Montaria)
       Caso 5
            Montaria <- "Drag�o"
            Vel_Montaria <- "13m/s"
            Descanso_Montaria <- "4 min"
            EscrevaL ("Voc� escolheu o Drag�o.")
            EscrevaL ("Velocidade de sua montaria: ", Vel_Montaria, ". Seu tempo de descanso: ", Descanso_Montaria)
    FimEscolha
    EscrevaL ("Deseja ver suas informa��es? [S/N]")
    Leia (Confirma_Informacoes)
    Se (Confirma_Informacoes = "S") ou (Confirma_Informacoes = "s") entao
       LimpaTela
    Senao
       FimAlgoritmo
    FimSe
    // Por final, � mostrado todas as inform��es envolvendo o personagem do usu�rio.
    Tela_Jogo()
    EscrevaL ("Sua classe: ", Classe)
    EscrevaL ("Sua ferramenta de batalha: ", Ferramenta)
    EscrevaL ("Seus pontos de vida: ", Vida)
    EscrevaL ("Sua mana: ", Mana)
    EscrevaL ("Sua velocidade de ataque: ", Vel_Atk)
    EscrevaL ("Sua cor de pele: ", Caracteristica_Avatar[1])
    EscrevaL ("Sua cor do cabelo: ", Caracteristica_Avatar[2])
    EscrevaL ("Sua cor dos olhos: ", Caracteristica_Avatar[3])
    EscrevaL ("Seu tipo de corpo: ", Caracteristica_Avatar[4])
    EscrevaL ("Sua altura: ", Caracteristica_Avatar[5], "cm")
    EscrevaL ("Sua Montaria: ", Montaria)
    EscrevaL ("A velocidade de sua Montaria: ", Vel_Montaria)
    EscrevaL ("O tempo de descanso de sua Montaria: ", Descanso_Montaria)
FimAlgoritmo