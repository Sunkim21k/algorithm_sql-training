import sys
matrix_list = []
for i in range(5):
    matrix_list.append(list(sys.stdin.readline().split()))

count = 0
text = ""
for i in range(15):
    for j in range(5):
        if len(matrix_list[j][0]) > i:
            text += matrix_list[j][0][i]

print(text)