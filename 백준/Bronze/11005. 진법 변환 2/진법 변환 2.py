number, b = input().split() # 10진법 number를 b진법으로 변환
b = int(b)
number = int(number)
numbers = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'
answer = ""
namugy = 0
while number > 0:
    namugy = number % b
    number = number // b
    answer = (numbers[namugy] + answer)

print(answer)