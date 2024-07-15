num = input().split()
hour_time = int(num[0])
second_time = int(num[1])

if second_time - 45 < 0:
    if hour_time - 1 < 0:
        hour_time = 23
    else:
        hour_time -= 1
    second_time += 15  # +60 -45
else:
    second_time -= 45

print(hour_time, second_time)