#continue: skips current iteration

i = 0

while (i < 10):
    i += 1
    if (i % 3 == 0):
        continue
    print(i)

print("outside loop...")