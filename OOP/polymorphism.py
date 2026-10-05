#Function Overriding
class Employee:
    def get_designation(self):
        print("designation = Employee")

class Teacher(Employee):
    def get_designation(self):
        print("designation = Teacher")

t1 = Teacher()
t1.get_designation()

#Duck Typing
class Manager():
    def get_designation(self):
        print("designation = Manager")

class Accountant():
    def get_designation(self):
        print("designation = Accountant")

t1 = Manager()
t1.get_designation()

acc1 = Accountant()
acc1.get_designation()
