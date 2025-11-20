#Primeiro script Python no VSCode
print ('Hello World')
print ('Esse é o primeiro script de \n Igor')

Init = "Primeiro script de Igor"
Fim = "e ele vai ficar bom nisso"

print (Init+" "+Fim)

Op = "Digite as notas"
print(Op)
Nomeee = input("Digite o nome\n  OOO")
N1 = int(input("Nota1: "))
N2 = int(input("Nota2: "))
N3 = int(input("Nota3: "))
N4 = int(input("Nota4: "))

#Média das notas (AVG)
AVG = (N1+N2+N3+N4)/4

print(f'A média é {AVG:.4f}')
print('A soma é:', N1+N2+N3+N4)
print('A média é:', AVG)

if AVG>60:
    print('Aprovado')
elif AVG>40:   
    print('Recuperação')
else:
    print('Reprovado')
