import sys

while True:
    first, second = map(int, sys.stdin.readline().split())
    if first == 0 and second == 0:
        break

    if first % second == 0:
        print('multiple')
    elif second % first == 0:
        print('factor')
    else:
        print('neither')