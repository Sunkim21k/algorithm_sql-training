import sys

numbers = [int(sys.stdin.readline()) for number in range(0, 28)]
find_num = []
for i in range(1, 30 + 1):
    if i not in numbers:
        find_num.append(i)

print(f"{find_num[0]}\n{find_num[1]}")