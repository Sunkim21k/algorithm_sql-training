import sys
test = sys.stdin.readline().strip()
abc = "abcdefghijklmnopqrstuvwxyz"
check = []
for i in abc:
  check.append(test.find(i))

print(" ".join(map(str, check)))