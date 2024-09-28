import sys
n = int(input())
numbers_x = []
numbers_y = []
for i in range(n):
    a, b = map(int, sys.stdin.readline().split())
    numbers_x.append(a)
    numbers_y.append(b)

if min(numbers_x) == max(numbers_x) or min(numbers_y) == max(numbers_y):
    print(0)
else:
    print((max(numbers_x) - min(numbers_x)) * (max(numbers_y) - min(numbers_y)))
