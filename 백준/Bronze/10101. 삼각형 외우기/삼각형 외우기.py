a = int(input())
b = int(input())
c = int(input())

if a <= 0 or b <= 0 or c <= 0:
    print("Error")
elif a + b + c != 180:
    print("Error")
elif a == b == c:
    print("Equilateral")
elif a == b or b == c or a == c:
    print("Isosceles")
else:
    print("Scalene")
