#dictionary methods

info = {
    "name": "manasvi",
    "age": 21,
    "subjects": ["Computer Networks", "Operating Systems"],
    3.14: "PI"
}

print(info.keys())

print(info.values())

print(info.items())

print(info.get("age"))

info.update({
    "city": "Indore"
})

print(info)