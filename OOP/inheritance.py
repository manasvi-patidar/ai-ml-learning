class Employee:
    start_time = "10am"
    end_time = "6pm"

    def change_time(self, new_end_time):
        self.end_time = new_end_time


class Teacher(Employee):
    def __init__(self, subject):
        self.subject = subject


t1 = Teacher("Maths")
t1.change_time("5pm")

print(t1.subject, t1.start_time, t1.end_time)
