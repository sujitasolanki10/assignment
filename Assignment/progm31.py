'''
Write a Python program to remove duplicates from a list. 

'''
list1 = [1, 2, 2, 3, 4, 4, 5, 1, 6, 7, 7]
list_new =[]
for i in list1:
    if i not in list_new:
        list_new.append(i)
print(list_new)        