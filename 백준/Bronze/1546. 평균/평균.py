import sys

count = int(sys.stdin.readline())
numbers = sys.stdin.readline().split()
num_list = [int(i) for i in numbers]

num_max = max(num_list)
for i in range(count):
    num_list[i] *= (100 / num_max)

avg = sum(num_list) / len(num_list)
print(avg)