class Student:
    college_name = "ABC college" #class
    PI = 3.1

    def __init__(self, name, cgpa): 
        self.name = name #instance
        self.cgpa = cgpa
        self.PI = 3.14

stu1 = Student("Rahul", 9.2)

print(stu1.name)

print(stu1.college_name)
print(Student.college_name)

print(stu1.PI)
print(Student.PI)
