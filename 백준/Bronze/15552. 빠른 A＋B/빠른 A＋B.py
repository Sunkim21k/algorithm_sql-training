import sys

test_case = int(input())
for i in range(test_case):
    num1, num2 = map(int, sys.stdin.readline().split())
    print(num1 + num2)