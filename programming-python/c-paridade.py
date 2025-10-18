print("Digite um número inteiro")
num = int(input())
print("Como essa quantia correspode a", num)
print("Sua divisão por 2 resulta em", num/2)
print("E tem resto =", num%2)
print("Logo,")
if (num%2) == 1:
    print("É ímpar.")
else:
    print("É par.")