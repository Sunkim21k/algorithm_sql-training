n = 1
number = 1
X = int(input())
answer = 0
while True:
    if X <= number:
        answer = abs(number - X)
        break

    if n % 2 == 1:
        number += 1
    else:
        if X <= number + n - 1:
            answer = abs(number - X)
            break
        number += 2 * n

    n += 1

print(f"{answer+1}/{n-answer}")