'''
write a Python program to get a string made of the first 2 and the last 
2 chars from a given a string. If the string length is less than 2, return 
instead of the empty string. 
'''
# Input a string
string = input("Enter a string: ")

# Check if the length of the string is less than 2
if len(string) < 2:
    result = ""
else:
    # Create a new string with the first 2 and last 2 characters
    result = string[:2] + string[-2:]

# Print the result
print("Result:", result)