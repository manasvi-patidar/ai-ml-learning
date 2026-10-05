#Multilevel Inheritance
class Employee:
    start_time = "10am"
    end_time = "5pm"

class AdminStaff(Employee):
    def __init__(self, role):
        self.role = role

class Accountant(AdminStaff):
    def __init__(self, salary, role):
        super().__init__(role)
        self.salary = salary

acc1 = Accountant(85_000, "CA")

print(acc1.role, acc1.salary, acc1.start_time, acc1.end_time)

#Multiple Inheritance
class Teacher:
    def __init__(self, salary):
        self.salary = salary

class Student:
    def __init__(self, cgpa):
        self.cgpa = cgpa

class TA(Teacher, Student):
    def __init__(self, salary, cgpa, name):
        super().__init__(salary)
        Student.__init__(self, cgpa)
        self.name = name

ta1 = TA(12_000, 9.2, "Manasviii")

print(ta1.name, ta1.cgpa, ta1.salary)
