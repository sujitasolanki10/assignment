"""
14)write a python program to sum of the first n positive integers.
"""
num=int(input("enter the number:"))

if num<0:
    print("please enter the positive number:")

else:
    sum=0
    while num>0:
        sum+=num
        num-=1

print(sum)