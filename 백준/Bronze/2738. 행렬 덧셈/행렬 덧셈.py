import sys
n, m = map(int, sys.stdin.readline().split())

matrix_a = []
matrix_b = []
matrix_sum = []

for i in range(n):
    matrix_a.append(list(sys.stdin.readline().split()))

for j in range(n):
    matrix_b.append(list(sys.stdin.readline().split()))
    matrix_sum.append(('a '* m).split())
    for k in range(m):
        matrix_sum[j][k] = int(matrix_a[j][k]) + int(matrix_b[j][k])

for i in range(n):
    print(*matrix_sum[i])
