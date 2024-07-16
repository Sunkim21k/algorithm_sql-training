import sys

input_num = sys.stdin.read()  # 데이터를 받는다
numbers = input_num.splitlines()  # 데이터를 나눈다

for number in numbers:
    a, b = map(int, number.split())

    print(a + b)