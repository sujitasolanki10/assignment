'''
Write a Python program to add 'in' at the end of a given string (length 
should be at least 3). If the given string already ends with 'ing' then 
add 'ly' instead if the string length of the given string is less than 3, 
leave it unchanged. 
'''
# Input a string
string = input("Enter a string: ")

# Check if the length of the string is at least 3
if len(string) >= 3:
    # If the string ends with 'ing', add 'ly'
    if string.endswith("ing"):
        string += "ly"
    else:
        # Otherwise, add 'ing'
        string += "ing"
        
# If the string length is less than 3, it remains unchanged
print("Modified string:", string)
