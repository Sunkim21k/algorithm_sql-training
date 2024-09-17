numbers = []
for i in range(3):
    a, b = map(int, input().split())
    numbers.append(a)
    numbers.append(b)

answer_x = 0
answer_y = 0

if numbers[0] == numbers[2]:
    answer_x = numbers[4]
elif numbers[0] == numbers[4]:
    answer_x = numbers[2]
else:
    answer_x = numbers[0]

if numbers[1] == numbers[3]:
    answer_y = numbers[5]
elif numbers[1] == numbers[5]:
    answer_y = numbers[3]
else:
    answer_y = numbers[1]

print(answer_x, answer_y)