#python pq1.py

info = [
    ("Alice", "Math"),
    ("Bob", "Science"),
    ("Alice", "Science"),
    ("Charlie", "Math"),
    ("Bob", "Math"),
    ("Alice", "English"),
    ("Charlie", "English"),
]

#unique courses
courses_set = set()

for tup in info:
    courses_set.add(tup[1]) #course

print(courses_set)

#students enrolled in english
for name, course in info:
    if(course == "English"):
        print(name)

#create dictionary(student, set of courses)
dict = {}

for name,course in info:
    if(dict.get(name) == None):
        dict.update({name: set()})
        dict[name].add(course)
    else:
        dict[name].add(course)

print(dict)