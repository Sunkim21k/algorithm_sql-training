total_price = int(input())
num = int(input())
total_pay = 0

for i in range(num):
    items = input().split()
    total_pay += (int(items[0]) * int(items[1]))

if total_price == total_pay:
    print("Yes")
else:
    print("No")