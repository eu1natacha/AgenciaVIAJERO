Algoritmo "AtividadePraticaModuloII"

// Usando Pseudoc�digo:
//Usando conceitos de programa��o estruturada (Vetor),
//criar em pseudoc�digo um menu para simular um cadastro
//para uma ag�ncia de viagens com as seguintes fun��es:
//cadastro de cliente e cadastro de destino, criar tamb�m
//uma consulta para cada estrutura de dados.

Var
   nomeCliente, cpfCliente, nomeDestino: caractere
   precoDestino: real
   nomesClientes, cpfsClientes, nomesDestinos: vetor[1..100] de caractere
   precosDestinos: vetor[1..100] de real
   i, opcao, qtdClientes, qtdDestinos: inteiro

Inicio
   qtdClientes <- 0


   repita
      escreval("*********  MENU  ********")
      escreval("*   DIGITE UMA OP��O:   *")
      escreval("* 1. CADASTRO CLIENTE   *")
      escreval("* 2. CADASTRO DESTINO   *")
      escreval("* 3. CONSULTAR CLIENTE  *")
      escreval("* 4. CONSULTAR DESTINO  *")
      escreval("* 5. SAIR               *")
      escreval("*******  VIAJERO  *******")
      escreval("")



      leia (opcao)
      escolha opcao
         caso 1
            escreval("")
            escreval("Informe o nome completo do cliente:")
            leia(nomeCliente)
            escreval("Informe o CPF do cliente:")
            leia(cpfCliente)

            qtdClientes <- qtdClientes + 1

            nomesClientes[qtdClientes] <- nomeCliente
            cpfsClientes[qtdClientes] <- cpfCliente

            escreval("")
            escreval("Cliente cadastrado!")
            escreval("")
         caso 2
            escreval("")
            escreval("Informe o nome do destino:")
            leia(nomeDestino)
            escreval("Informe o valor do destino:")
            leia(precoDestino)

            qtdDestinos <- qtdDestinos + 1

            nomesDestinos[qtdDestinos] <- nomeDestino
            precosDestinos[qtdDestinos] <- precoDestino

            escreval("")
            escreval("Destino cadastrado!")
            escreval("")
         caso 3
            escreval("")
            se qtdClientes = 0 ent�o
               escreval("N�o h� clientes cadastrados!")
            sen�o
               escreval("***** Tabela de Clientes ******")
               para i de 1 ate qtdClientes faca
                  escreval("Nome: ", nomesClientes[i])
                  escreval("CPF: ", cpfsClientes[i])
                  escreval("-------------------------------")
               fimpara
               escreval("*******************************")
            fimse
            escreval("")
         caso 4
            escreval("")
            se qtdDestinos = 0 ent�o
               escreval("N�o h� destinos cadastrados!")
            sen�o
               escreval("***** Tabela de Destinos ******")
               para i de 1 ate qtdDestinos faca
                  escreval("Nome: ", nomesDestinos[i])
                  escreval("Pre�o: ", precosDestinos[i])
                  escreval("-------------------------------")
               fimpara
               escreval("*******************************")
            fimse
            escreval("")
         caso 5
            interrompa
         outrocaso
            escreval("")
            escreval("Op��o inv�lida")
            escreval("")
      fimescolha
   ate opcao = 5


Fimalgoritmo