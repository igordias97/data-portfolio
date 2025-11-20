#Desafio Entrevista - Asimov Academy

#Pede nome e idade
#Da oi para você
#Conta quantas letras seu nome possui
#Quantos anos terá apos 5 anos

Nome = input("Digite seu nome: ")
Idade = int(input("Digite sua idade: "))
Tamanho_nome = len(Nome)

print('Olá ',Nome, ', tudo bem? :D ')
print("Seu nome tem ", Tamanho_nome, " letras")
print("Daqui 5 anos você terá ",Idade+5, "anos.")