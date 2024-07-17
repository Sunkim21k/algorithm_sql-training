import sys
# 리스트 내포로 숫자 받기
numbers = [int(sys.stdin.readline().strip()) for number in range(9)]

num_max = max(numbers)
num_count = numbers.index(num_max) + 1

print(f"{num_max}\n{num_count}")