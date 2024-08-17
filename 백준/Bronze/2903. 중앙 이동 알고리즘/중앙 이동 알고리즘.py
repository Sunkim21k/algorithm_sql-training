# 가로, 세로 늘어나는 정사각형수 2 ** (n-1)
# 가로, 세로 점의 수 = (정사각형수 * 2) + 1
# 저장해야하는 점의 수 = 가로 점의 수 * 세로 점의 수 = 가로 점의 수 ** 2

N = int(input())
add_square = 2 ** (N-1)
save_dot = ((add_square * 2) + 1) ** 2
print(save_dot)