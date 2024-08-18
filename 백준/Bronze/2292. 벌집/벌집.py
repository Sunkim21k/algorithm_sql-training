N = int(input())
count = 1
size = 1
answer = 1
# 벌집 크기 (마지막번호) 중앙에서 오른쪽아래
while N > size:
    count += 1
    size = (6 * ((count *(count-1)) // 2)) + 1

print(count)