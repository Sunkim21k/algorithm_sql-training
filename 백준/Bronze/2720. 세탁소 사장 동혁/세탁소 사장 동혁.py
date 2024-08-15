import sys
quarter = 25
dime = 10
nickel = 5
penny = 1
temp = ""
case_list = []
test = int(input())
for i in range(test):
    test_case = int(sys.stdin.readline())
    temp += str(test_case // quarter) + " "
    temp += str((test_case % quarter) // dime) + " "
    temp += str((test_case % quarter % dime) // nickel) + " "
    temp += str((test_case % nickel) // penny)
    case_list.append(temp)
    temp = ""

print("\n".join(case_list))