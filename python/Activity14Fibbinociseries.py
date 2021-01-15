
def fib(num):
   if num<=1:
       return num
   else:
       return (fib(num-1)+fib(num-2))

totnumber = int(input("Number of fibbinoci series to be printed : "))

if totnumber <=0:
    print ("type valid number")
else:
    for i in range(totnumber):
        print(fib(i))

    
     