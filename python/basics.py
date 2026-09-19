print("hello world", "with love \nManasvi")  # run python basics.py in python terminal

#variables
name = "manasvi"
age = 21
PI = 3.14

print(name, age, PI)
print("My name is : ", name)

#datatypes
print(type(age))

a = 5
b = 2

#arithmetic operators
print(a+b)
print(a-b)
print(a*b)
print(a/b)
print(a%b)
print(a**b)

#relational operators
print(a < b)
print(a != b)

#assignment operators
a += 5
print(a)

#logical operators
print(not (5 > 8))
print((5 > 3) and (3 > 8))
print((5 > 3) or (3 > 8))

#type conversion and casting
ans1 = int(5 + 10.0) #type casting
ans2 = 5 + 10.0 #type conversion

print(ans1, type(ans1))
print(ans2, type(ans2))