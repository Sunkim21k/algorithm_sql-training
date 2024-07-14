num1, num2 = int(input()), int(input())

if num1 > 0 and num2 > 0:
    print(1)
elif num1 < 0 and num2 > 0:
    print(2)
elif num1 < 0 and num2 < 0:
    print(3)
else:
    print(4)