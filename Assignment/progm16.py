'''
Write a Python program to get a single string from two given strings, 
separated by a space and swap the first two characters of each string. 
'''
# Input two strings
str1 = input("Enter the first string: ")
str2 = input("Enter the second string: ")

# Swap the first two characters of each string
if len(str1) >= 2 and len(str2) >= 2:
    new_str1 = str2[:2] + str1[2:]  # Swap first two characters of str1
    new_str2 = str1[:2] + str2[2:]  # Swap first two characters of str2
else:
    print("Both strings must have at least two characters.")
    exit()

# Combine the modified strings into a single string separated by a space
result = new_str1 + " " + new_str2

# Print the result
print("Resulting string:", result)