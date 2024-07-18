import sys
number = int(sys.stdin.readline().strip())
test = [sys.stdin.readline().strip() for i in range(number)]
for i in test:
  print(i[0] + i[-1])