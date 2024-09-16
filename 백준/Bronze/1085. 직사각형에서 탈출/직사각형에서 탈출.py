x, y, w, h= map(int, input().split())
numbers = []
numbers.append(x-0)
numbers.append(y-0)
numbers.append(w-x)
numbers.append(h-y)
print(min(numbers))