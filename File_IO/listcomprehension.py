#ex:1
sq = [i*i for i in range(6) if i%2 != 0]
print(sq)

#ex:2
nums = [-2, -3, 3, 4, -1, 7]

nums = [0 if val < 0 else val for val in nums]
print(nums)

#ex:3
words = ["hello", "manasvi", "here"]

words = [val.upper() for val in words]
print(words)
