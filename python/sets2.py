#set methods

s = {1, 2, 2, 2, 3}

print(s)

s.add(5) 
print(s)

s.remove(1)
print(s)

s.pop()
print(s)

s.clear()
print(s)

# union & intersection

s1 = {1, 2, 3, 4, 5}
s2 = {4, 5, 8, 9, 10}

print(s1.union(s2))
print(s1.intersection(s2))
