fruitshop = {
    "apple" : 20,
    "mango" : 50,
    "banana" : 15,
    "avacado" : 90

}

fruit_available = input("Which fruit do you what to check: ").lower()

if (fruit_available in fruitshop):
    print("Fruit is available in fruitshop")
else:
    print("Fruit is not available in fruitshop")