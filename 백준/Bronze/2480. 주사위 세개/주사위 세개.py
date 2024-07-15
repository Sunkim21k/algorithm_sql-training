dice = input().split()
num1 = int(dice[0])
num2 = int(dice[1])
num3 = int(dice[2])

max_dice = int(max(dice))

if num1 == num2 == num3:   # 모두 같은 눈
    print(10000 + (num1 * 1000))
elif num1 == num2:
    print(1000 + (num1 * 100))
elif num2 == num3:
    print(1000 + (num2 * 100))
elif num1 == num3:
    print(1000 + (num1 * 100))
else:
    print(100 * max_dice)
