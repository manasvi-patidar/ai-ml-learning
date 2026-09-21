#Ex:1

#function definition
def hello():
    print("hello")
    print("with love, Manasvi")

#function call
hello()

#Ex:2

def sum(a, b):
    s = a + b
    return s

print(sum(3, 4))

#Ex:3 Default Parameters

def sum(a, b=1):
    return a + b

print(sum(5))    

#Ex:4 Calculate average

def calc_avg(a, b, c):
    sum = a + b + c
    return sum/3

print(calc_avg(5, 10, 15))

#Ex:5 Factorial of 'n'

def calc_factorial(n):
    fact = 1
    for i in range(1, n+1):
        fact *= i

    return fact

n = int(input("enter n: "))
print(calc_factorial(n))
     