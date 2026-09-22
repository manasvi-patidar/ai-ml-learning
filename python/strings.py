word = "Python"
word1 = "Artificial Intelligence"
word2 = "Machine Learning"

#length
print(len(word1))

#concatenate
print(word1 + " " + word2)

#index
print(word[2]) # t

for ch in word:
    print(ch)

#slicing
print(word[2:4]) # th
print(word[2:]) # thon
print(word[:len(word)]) # python
print(word1[:])
print(word[-4:-2]) # th

#string formatting -> .format and f-strings
a = 5
b = 10
sum = a + b

#.format
#normal formatting
print("sum is {}".format(sum))
print("sum of {} & {} is {}".format(a, b, sum))
print("language is {}".format("python"))

#index based formatting
print("sum of {1} & {0} is {2}".format(a, b, sum))

#value based formatting
print("values of vars {a} & {b}".format(a=2, b=4))

#f-strings
a = 7
b = 3
print(f"sum of {a} & {b} is {a + b}")
print(f"avg of {a} & {b} is {(a + b)/2}")
