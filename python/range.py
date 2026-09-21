# range() function -> (start, stop, step)

for i in range(1, 10, 2):
    print(i)

#Ex:1 sum of 'n' natural no.s

n = int(input("enter number: "))

sum = 0

for i in range(1, n+1):
    sum += i

print("sum = ", sum)
