'''
Write a Python function to insert a string in the middle of a string. 

'''
# Input the original string
original_string = input("Enter the original string: ")

# Input the string to insert
string_to_insert = input("Enter the string to insert: ")

# Find the middle index of the original string
middle_index = len(original_string) // 2

# Insert the string at the middle index
result = original_string[:middle_index] + string_to_insert + original_string[middle_index:]

# Print the resulting string
print("Resulting string:", result)