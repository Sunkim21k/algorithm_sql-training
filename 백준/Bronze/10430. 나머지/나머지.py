num_abc = input()
num_abc = num_abc.split()  # 공백으로 나눠 리스트 생성
A = int(num_abc[0])
B = int(num_abc[1])
C = int(num_abc[2])

print((A + B) % C)
print(((A % C) + (B % C)) % C)
print((A * B) % C)
print(((A % C) * (B % C)) % C)