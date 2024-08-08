import sys
count = int(input())
matrix_list = []
area = 0
for i in range(count):
    x, y = map(int, sys.stdin.readline().split())
    matrix_list.append((x, y))  # 좌표 저장

paper = [[0] * 100 for _ in range(100)]  # 도화지는 100x100으로 가정

for x, y in matrix_list:
    for i in range(x, x + 10):
        for j in range(y, y + 10):
            paper[i][j] = 1  # 색종이가 붙은 부분 표시

for row in paper:
    area += sum(row)

print(area)