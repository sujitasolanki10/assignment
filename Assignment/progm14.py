"""
18) write  a python program to count occurrences of a substring in a string.
"""

my_string=input("enter a string:")
my_substring=input("enter a substring:")

my_count=my_string.count(my_substring)

print("substring occurs %d times"%my_count)