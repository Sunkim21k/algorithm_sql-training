import sys
text = str(sys.stdin.readline().strip().split())

text_to_num = {"ABC" : 2,
               "DEF" : 3,
               "GHI" : 4,
               "JKL" : 5,
               "MNO" : 6,
               "PQRS" : 7,
               "TUV" : 8,
               "WXYZ" : 9}
sum_second = 0

for i in text:
  for key, value in text_to_num.items():
    if i in key:
      sum_second += value + 1

print(sum_second)