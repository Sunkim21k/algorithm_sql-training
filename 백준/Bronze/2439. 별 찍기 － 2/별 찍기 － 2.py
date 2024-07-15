import sys

test_case = int(input())

for i in range(1, test_case + 1):
    print(f"{' ' * (test_case - i)}{'*' * i}")
