num_len = input()
num = input()
test_num = int(input())
space = " "
num += space
sample_num = ""
count = 0

for i in num:
    if i == space:
        if int(sample_num) == test_num:
            count += 1
        sample_num = ""
    else:
        sample_num += i

print(count)