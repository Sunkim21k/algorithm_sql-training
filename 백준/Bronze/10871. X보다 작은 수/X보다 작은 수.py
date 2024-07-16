import sys

num_n, num_x = map(int, sys.stdin.readline().split())
num_a = sys.stdin.readline().split()
num_ax = ""

for i in num_a:
    if int(i) < num_x:
        num_ax += (i + " ")

print(num_ax)