while True:
    print("Adivinhe o valor de x, que está entre 1 e 100")
    valor = int(input())
    if valor == 99:
        print("É o valor de x")
        break
    else:
        print("Não é o valor de x")

