a, b, c = map(int, input().split())
a, b, c = sorted([a, b, c])

if a + b > c:
    print(a + b + c)
else:
    print((a + b) * 2 - 1)
