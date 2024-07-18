import sys
count = int(sys.stdin.readline().strip())
test = [sys.stdin.readline().strip().split() for i in range(count)]

def new_text_f(text):
  for count_, case_ in text:
    new_text = ""
    for i in case_:
      new_text += i * int(count_)
    print(new_text)

new_text_f(test)
