import sys

test_case = int(input())

for i in range(1, test_case + 1):
    num1, num2 = map(int, sys.stdin.readline().split())
    print(f"Case #{i}: {num1} + {num2} = {num1 + num2}")
