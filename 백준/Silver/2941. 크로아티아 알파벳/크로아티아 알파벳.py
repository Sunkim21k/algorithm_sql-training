import  sys
test = str(sys.stdin.readline().strip())
croatia = ["c=", "c-", "d-", "lj", "nj", "s=", "z="]
count = 0
for i in croatia:
    if i in test:
        count += test.count(i)
count += test.count("dz=")

print(len(test) - count)