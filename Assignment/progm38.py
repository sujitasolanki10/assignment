'''
Write a Python program to select an item randomly from a list. 
'''
import random


my_list = [10, 20, 30, 40, 50, "apple", "banana", "cherry"]

# random item from the list
random_item = random.choice(my_list)


print("The randomly selected item is:", random_item)