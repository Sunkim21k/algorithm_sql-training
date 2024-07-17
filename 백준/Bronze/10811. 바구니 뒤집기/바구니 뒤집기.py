import sys

basket, change_basket = map(int, sys.stdin.readline().split())
numbers = [number for number in range(basket + 1)]

for number in range(change_basket):
    i, j = map(int, sys.stdin.readline().split())
    numbers[i:j + 1] = reversed(numbers[i:j + 1])

print(*numbers[1:])