"""5)Write a program to get a the factorial number is given number?"""
num=int(input("enter the number:"))

fact=1
if num<0:
    print("factorial of 0 is does not exist:")

if num==0:
    print("factorial of 0 is",1)

if num>0:
    for i in range(1,num+1):
        fact=fact*i
print(fact)