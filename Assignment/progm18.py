'''
Write a Python function to reverses a string if its length is a multiple 
of 4.
'''

# Input a string
string = input("Enter a string: ")

# Check if the length of the string is a multiple of 4
if len(string) % 4 == 0:
    # Reverse the string
    string = string[::-1]

# Print the result
print("Result:", string)