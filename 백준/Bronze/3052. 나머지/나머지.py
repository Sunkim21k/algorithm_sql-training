import sys

counter = {}

for i in range(10):
    num = int(sys.stdin.readline()) % 42
    if num not in counter:
        counter[num] = 0
    counter[num] += 1

print(len(counter))