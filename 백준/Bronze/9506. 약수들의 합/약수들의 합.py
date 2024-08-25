import sys
while True:
    n = int(sys.stdin.readline())
    num = 1
    total = 0
    numbers = []
    if n == -1:
        break
    while True:
        if n % num == 0:
            total += num
            numbers.append(num)
            if total > n:
                print(f"{n} is NOT perfect.")
                break

        if n - 1 == num:
            if total != n:
                print(f"{n} is NOT perfect.")
                break
            else:
                text = " + ".join(map(str, numbers))
                print(f"{n} = {text}")
                break
        num += 1