class Student:
    def __init__(self, name, cgpa):
        self.name = name
        self.cgpa = cgpa

    def get_cgpa(self):
        return self.cgpa

stu1 = Student("Manasvi", 8.4)
stu2 = Student("Vandan", 9.8)

print(f"{stu1.name} has cgpa = {stu1.get_cgpa()}")
