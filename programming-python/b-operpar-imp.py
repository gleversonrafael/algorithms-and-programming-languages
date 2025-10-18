print("Digite um número natural")
número = int(input())
print("Como essa quantia correspode a", número)
print("Sua divisão por 2 resulta em",número/2)
print("E tem resto =", número%2)
print("Logo")
if (número%2) == 1:
    print("É ímpar")
else:
    print("É par")