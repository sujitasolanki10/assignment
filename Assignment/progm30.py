'''Write a Python program to count the number of strings where the string 
length is 2 or more and the first and last character are same from a given list 
of strings.'''

strings = ["aba", "xyz", "aa", "x", "bbb", "cde", "abcba", "a"]


count = 0  # Initialize the counter

# Iterate through each string in the list
for s in strings:
    # Check if the string length is 2 or more and first and last characters are the same
    if len(s) >= 2 and s[0] == s[-1]:
        count += 1

# Output the result
print("Count of strings with length 2 or more and same first and last character:", count)