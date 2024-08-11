number, b = input().split()  # b진법 수 n
b = int(b)

numbers = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
answer = 0

for i in range(len(number)):
    if number[-(i+1)] in numbers:  # 첫째 자리부터
        answer += (b ** i) * (numbers.find(number[-(i+1)]) + 10)
    else:
        answer += (b ** i) * int(number[-(i+1)])

print(answer)