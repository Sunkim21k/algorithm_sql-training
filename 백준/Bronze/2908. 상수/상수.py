import sys
num1, num2 = map(str, sys.stdin.readline().split())

num1_ = int(num1[::-1])
num2_ = int(num2[::-1])

if num1_ > num2_:
  print(num1_)
else:
  print(num2_)