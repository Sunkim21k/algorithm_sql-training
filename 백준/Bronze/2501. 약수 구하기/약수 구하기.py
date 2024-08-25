import sys
n, k = map(int, sys.stdin.readline().split())
count = 0
num = 1

while True:
    if n % num == 0:
        count += 1
        if count == k:
            print(num)
            break

    if n == num:
        print(0)
        break

    num += 1