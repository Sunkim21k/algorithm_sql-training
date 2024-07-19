import sys
white_find = list(map(int, sys.stdin.readline().split()))

black = [1, 1, 2, 2, 2, 8]
need_white = [black[i] - white_find[i] for i in range(len(black))]

print(*need_white)