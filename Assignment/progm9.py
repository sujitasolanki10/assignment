"""
12) write a python program to sum of three given integers.However ,if two values are equal 
sum will be zero .
"""
#2 2 2 =0
#2 3 2 =0
#3 4 5 =12

def sum(x,y,z):
    if x==y or y==z or x==z:
        sum=0
    else:
        sum=x+y+z
    return sum
print(sum(2,2,2))
print(sum(2,3,2))
print(sum(3,4,5))