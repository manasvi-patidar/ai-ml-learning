info = {
    "name": "manasvi",
    "age": 21,
    "subjects": ["Computer Networks", "Operating Systems"],
    3.14: "PI"
}

print(info)
print(type(info))
print(info[3.14])

#mutable
info["age"] = 22
print(info["age"])