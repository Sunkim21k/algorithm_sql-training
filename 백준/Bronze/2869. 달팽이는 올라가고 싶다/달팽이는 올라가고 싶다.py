import sys
day = 1
height = 0
A, B, V = map(int, sys.stdin.readline().split())

V -= A
count = abs(V // (A-B))
day += count
count_ = abs(V % (A-B))
if count_ != 0:
    day += 1

print(day)