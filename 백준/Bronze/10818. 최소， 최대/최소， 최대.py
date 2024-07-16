import sys
num1 = int(sys.stdin.readline())
num_x = sys.stdin.readline().split()

num_max = 0
num_min = 0

for i in num_x:

    if num_max == 0:
        num_max = int(i)
    elif int(i) > num_max:
        num_max = int(i)

    if num_min == 0:
        num_min = int(i)
    elif int(i) < num_min:
        num_min = int(i)

print(num_min, num_max)