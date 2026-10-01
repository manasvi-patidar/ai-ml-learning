#types of constructors

class Student:
    def __init__(self): #default
        print("object is being constructed...")

    def __init__(self, name, cgpa): #parameterized
        self.name = name
        self.cgpa = cgpa

    def get_cgpa(self):
        return self.cgpa

stu1 = Student("Manasvi", 8.4)
stu1 = Student("Vandan", 9.8)

print(f"{stu1.name} has cgpa = {stu1.get_cgpa()}")
