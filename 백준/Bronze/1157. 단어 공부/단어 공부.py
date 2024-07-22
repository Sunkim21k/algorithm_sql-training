import sys
text = sys.stdin.readline().strip().upper()

frequency = {}

for i in text:
    if i in frequency:
        frequency[i] += 1
    else:
        frequency[i] = 1

max_count = max(frequency.values())

most_text = [key
             for key, value in frequency.items()
             if value == max_count
]

if len(most_text) == 1:
    print(most_text[0])
else:
    print("?")