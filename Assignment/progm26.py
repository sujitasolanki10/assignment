# Differentiate between append () and extend () methods? 
'''
1. append()
    Adds a single element to the end of the list.
    list.append(element)
    The element can be of any data type (including another list), and it will be added as a single item.

'''
my_list = [1, 2, 3]
my_list.append(4)
print(my_list)  # Output: [1, 2, 3, 4]

my_list.append([5, 6])
print(my_list)  # Output: [1, 2, 3, 4, [5, 6]]

'''
 extend()
    -Extends the list by appending elements from an iterable (like a list, tuple, or string).
    -list.extend(iterable)
    -Adds each element from the iterable to the end of the list, effectively flattening the added elements into the list.
    '''
my_list = [1, 2, 3]
my_list.extend([4, 5])
print(my_list)  # Output: [1, 2, 3, 4, 5]

my_list.extend((6, 7))
print(my_list)  # Output: [1, 2, 3, 4, 5, 6, 7]

