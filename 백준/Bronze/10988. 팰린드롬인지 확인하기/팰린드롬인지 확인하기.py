text = input()
a = "a"
result = a + text
count = 1
for i in range(len(result)):
    if result[i] != result[-i]:
        count = 0

print(count)