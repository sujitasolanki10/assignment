'''
Write a Python program to find the second smallest number in a list.

'''

num = [5, 3, 8, 1, 4, 10, 2]


sort = sorted(set(num)) 

# Check if the list has at least two unique elements
if len(sort) >= 2:
    # Get the second smallest number
    second_smallest = sort[1]
    print("The second smallest number is:", second_smallest)
else:
    print("The list does not have enough unique elements to find the second smallest number.")
    '''
Write a Python program to find the second smallest number in a list.

'''

num = [5, 3, 8, 1, 4, 10, 2]


sort = sorted(set(num)) 

# Check if the list has at least two unique elements
if len(sort) >= 2:
    # Get the second smallest number
    second_smallest = sort[1]
    print("The second smallest number is:", second_smallest)
else:
    print("The list does not have enough unique elements to find the second smallest number.")