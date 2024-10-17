"""
16)write a program to count the number of characters(character frequency)in a string 

"""
str=input("enter the string")
print(str)
l=list(str)
print()
freq=[l.count(ele) for ele in[l]]
print(freq)