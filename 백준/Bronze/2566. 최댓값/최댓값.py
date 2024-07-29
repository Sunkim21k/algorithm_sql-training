import sys
max_num = 0
matrix_list = []
where_col_row = "1 1"

for i in range(9):
    matrix_list.append(list(sys.stdin.readline().split()))
    for j in range(9):
        if int(matrix_list[i][j]) > max_num:
            max_num = int(matrix_list[i][j])
            where_col_row = f"{i+1} {j+1}"

print(max_num)
print(where_col_row)