def sumofnumbers(number):
    if number:
        return number + sumofnumbers(number-1)
    else:
        return 0
total = sumofnumbers(10)
print(total)

