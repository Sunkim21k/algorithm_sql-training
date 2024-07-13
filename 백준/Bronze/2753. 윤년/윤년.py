test_year = int(input())

if test_year % 4 == 0 and (test_year % 100 != 0 or test_year % 400 == 0):
    print(1)
else:
    print(0)