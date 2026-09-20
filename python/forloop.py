#in -> membership operator

#ex:1
string = "manasvi"

for var in string:
    print(var)

#ex:2 no. of i's
word = "artificial intelligence"

count = 0

for ch in word:
    if(ch == 'i'):
        count += 1

print("count of i = ", count)

#ex:3 vowel count
word = "artificial"

count = 0

for ch in word:
    if(ch == 'a' or ch == 'e' or ch == 'i' or ch == 'o' or ch == 'u'):
        count += 1

print("vowel count = ", count)        
