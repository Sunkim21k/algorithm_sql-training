import sys
m = int(sys.stdin.readline())
n = int(sys.stdin.readline())
numbers = []

for i in range(m, n+1):
    count = 0
    if i == 1:
        continue
    for j in range(2, int(i**0.5)+1):
        if j != i+1 and i % j == 0:
            count += 1
            break
    if count == 0:
        numbers.append(i)
    count = 0

if len(numbers) == 0:
    print(-1)
else:
    print(sum(numbers))
    print(min(numbers))