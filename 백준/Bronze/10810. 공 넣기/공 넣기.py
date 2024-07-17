import sys

basket, ball_count = map(int, sys.stdin.readline().split())
numbers = [0 for number in range(basket)]

for number in range(ball_count):
    i, j, k = map(int, sys.stdin.readline().split())
    for num in range(i - 1, j):
        numbers[num] = k

print(*numbers)