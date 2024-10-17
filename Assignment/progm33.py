'''
Write a Python function that takes two lists and returns true if they 
have at least one common member. '''
list1 = [1, 2, 3, 4]
list2 = [5, 6, 3, 7]


status= False    


for item in list1:
    # Check if the current item is present in the second list
    if item in list2:
        status = True
        break  # break the loop if a common number is found


if status:
    print("The lists have at least one common num.")
else:
    print("The lists do not have any common num.")
