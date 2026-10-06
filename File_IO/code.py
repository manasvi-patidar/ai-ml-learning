#operations on a file (open, write, delete, close)

f = open("sample.txt", "r") #returns file object

data = f.read()
print(data)
print(type(data))

f.close()
