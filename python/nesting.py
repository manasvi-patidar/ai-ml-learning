#if-else inside else

username = input("enter username: ")
password = input("enter password: ")

if (username == "manasvi" and password == "1234"):
    print("Success")
else:
    if (username != "manasvi"):
        print("wrong username")
    else:
        print("wrong password")
