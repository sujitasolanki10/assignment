#What is List? How will you reverse a list?
'''
list is a collection data type.
list which orderable ,sequsnce , indexeble,mutable (can change it value )

'''
my_list = [1, 2, 3, "hello", 4.5]

# How to Reverse a List?
'''
1)using reverse() method
'''
name=["anand","kumar","malviya"]
name.reverse()
print(name)
'''
2)using slicing
'''
rev=name[::-1]
print(rev)
'''
3)using revesed()
'''
rev_list =list(reversed(name))

