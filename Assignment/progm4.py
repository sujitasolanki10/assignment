"""6)write a python program to get the fibonacci series of given range.
"""
a=0
b=1
num=int(input("enter the number:"))

if num==1:
    print(a)

else:
    print(a)
    print(b)
for num in range(1,num+1):
    c=a+b
    a=b 
    b=c
print(c)