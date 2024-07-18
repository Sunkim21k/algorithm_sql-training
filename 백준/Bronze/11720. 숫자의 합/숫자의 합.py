import sys
count = int(sys.stdin.readline().strip())
numbers = sys.stdin.readline().strip()
sum_num = sum(int(i) for i in numbers)

print(sum_num)