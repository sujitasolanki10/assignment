'''Write a Python function that takes a list and returns a new list with 
unique elements of the first list.'''
list1 = [1, 2, 2, 3, 4, 4, 5, 1, 6, 7, 7]
list_new =[]
for i in list1:
    if i not in list_new:
        list_new.append(i)
print(list_new) 