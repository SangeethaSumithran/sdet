list1 = [11,20,31,14,15,63]
list2 = [42,15,32,51,60,17]
list3 =[]
for x in list1:
    if x%2!=0:
        list3.append(x)

    

for y in list2:
    if y%2==0:
        list3.append(y)
    

print(list3)