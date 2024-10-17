'''How will you compare two lists?'''
list1 = [1, 2, 3]
list2 = [1, 2, 3]
list3 = [3, 2, 1]

# Check if list1 is equal to list2
are_equal = list1 == list2  # True

# Check if list1 is equal to list3
are_equal_different_order = list1 == list3  # False

print(are_equal)  # Output: True
print(are_equal_different_order)  # Output: False