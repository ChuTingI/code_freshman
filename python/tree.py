def tree():
    height = input("Input height: ")
    h=int(height)
    for layer in range(1,h+1):
        for grid1 in range(h-layer):
            print(" ", end="")
        for leaf in range(2*layer-1):
            print("*", end="")
        print()
    for grid3 in range(h-1):
        print(" ", end="")
    print("|")

tree()