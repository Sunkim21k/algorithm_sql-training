num, cooking_minute = input().split(), int(input())
hour_time = int(num[0])
minute_time = int(num[1])

if (cooking_minute + minute_time) // 60 > 0:
    hour_time += ((cooking_minute + minute_time) // 60)
    if hour_time > 23:
        hour_time -= 24  # 24시를 0시로 변환
    minute_time = (cooking_minute + minute_time) % 60
else:
    minute_time += cooking_minute

print(hour_time, minute_time)