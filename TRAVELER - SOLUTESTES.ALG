Algoritmo "Traveler"

Var
//variaveis cliente
ppl:  vetor[1..4] de caractere
cpf: vetor[1..4] de caractere
tel: vetor[1..4] de caractere
loc: vetor[1..4] de caractere
des: vetor[1..4] de caractere
ida: vetor[1..4] de caractere
vlt: vetor[1..4] de caractere

//menus e funcs
op, pp: caractere
i, s, j: inteiro


//---------------------------------------------------------------------
procedimento inicializa()
//Menu inicial
Inicio
enquanto op<>"3" faca
   escreval("--------------Seja bem-vinda(o) à Traveler Apply------------------")
   escreval(" -----       Digite o número correspondente           ---------   ")
   escreval(" 1- Novo Cadastro ")
   escreval(" 2- Buscar Cadastro ")
   escreval(" 3- Sair ")
   escreva (" Opção: ")
     leia (op)

   se op="1" entao
      novo_cadastro()
   fimse

   se op="2" entao
      limpatela
      buscar_cadastro()
   fimse

   se op="3" entao
   para i de 1 ate 4 faca
      ppl[i]<-"x"
   fimpara
   limpatela
        escreval (" Obrigado! Volte sempre.")
   fimse
fimenquanto
fimprocedimento

//cadastro-------------------------------------------------------------------
procedimento novo_cadastro()
Inicio
   para i de 1 ate 4 faça
   se (ppl[i]="") entao
   escreva ("Nome: ")
     leia (ppl[i])
   escreva ("CPF: " )
     leia (cpf[i])
   escreva ("Telefone: " )
     leia(tel[i])
   escreva ("Saindo de: " )
     leia(loc[i])
   escreva ("Indo para: " )
     leia(des[i])
   escreva ("Ida: " )
     leia(ida[i])
   escreva ("Volta: " )
     leia(vlt[i])
voltar_menu()

escreval (" Cadastro realizado com Sucesso ")
limpatela
   fimse
   fimpara
escreval (" limite de cadastros excedido ")
fimprocedimento
// -------------------------------------------------------------------------
//voltarmenu
procedimento voltar_menu()
inicio
      escreva(" Voltar para o menu (S/N)?")
        leia (op)
      se op="s" entao
         i<-i+1
         limpatela
         inicializa()
      senao
         limpatela
         novo_cadastro()
      fimse

fimprocedimento
//busca-----------------------------------------------------------------------
procedimento buscar_cadastro()
inicio
   j<-1
   Escreva (" Digite o nome do cliente: ")
     leia(pp)
   para i de 1 ate 4 faca
   se pp=ppl[i] entao
     escreval ("Nome: ", ppl[i])
     escreval ("CPF: ", cpf[i])
     escreval ("Telefone: ", tel[i])
     escreval ("Saindo de: ", loc[i])
     escreval ("Indo para: ", des[i])
     escreval ("Ida: ", ida[i])
     escreval ("Volta: ", vlt[i])
   j<-j+1
   fimse
   fimpara
   se j=0 entao
     escreval ("Funcionario inexistente")
   fimse
   voltar_menu2()
   limpatela
fimprocedimento
//---------------------------------------------------------------------------
procedimento voLtar_menu2()
inicio
   escreva (" Voltar para o menu (1- SIM/ 2- NÃO)?")
     leia (op)
         se op="1" entao
         limpatela
         inicializa()

         senao
         limpatela
         buscar_cadastro()
         fimse
         fimprocedimento
//---------------------------------------------------------------------------
inicio
inicializa()



Fimalgoritmo