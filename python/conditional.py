# python conditional.py

#ex:1
age = int(input("enter age: "))

if (age < 13):
    print("child")
elif (age >= 13 and age < 18):
    print("teenager")
else:
    print("adult")

#ex:2
username = input("enter username: ")
password = input("enter password: ")

if (username == "manasvi" and password == "1234"):
    print("Login Successful!")
elif (username != "manasvi"):
    print("Wrong Username")
else:
    print("Wrong Password")    

#ex:3
n = int(input("enter num: "))

if (n % 5 == 0):
    print("multiple of 5")
else:
    print("not a multiple of 5")

#ex:4
n = int(input("enter number: "))

if (n % 2 == 0):
    print("EVEN")
else:
    print("ODD")
    