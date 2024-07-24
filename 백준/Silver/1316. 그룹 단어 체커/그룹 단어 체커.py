import sys
number = int(sys.stdin.readline())
text = [str(sys.stdin.readline().strip()) for i in range(number)]
group_word = 0
# 입력받은 알파벳을 순서대로 조사한다.
for i in text:
    check = 0
    for _ in i:
        # 알파벳 순서대로 카운트 세기
        count_num = i.count(_)
        # 카운트센 알파벳 첫인덱스 찾기
        find_num = i.find(_)
        # [첫인덱스:첫인덱스+카운트] 가 동일알파벳이 아니면 그룹단어가 아니다
        if i[find_num:find_num + count_num] != _ * count_num:
            check += 1
            break

    if check == 0:
        group_word += 1

print(group_word)