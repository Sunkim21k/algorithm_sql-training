import sys
grade_dc = {
    "A+" : 4.5,
    "A0" : 4.0,
    "B+" : 3.5,
    "B0" : 3.0,
    "C+" : 2.5,
    "C0" : 2.0,
    "D+" : 1.5,
    "D0" : 1.0,
    "F" : 0.0
}
grade_subject_sum = 0
grade_sum = 0

for i in range(20):
    grade_list = sys.stdin.readline().strip().split()
    if grade_list[-1] == "P":
        continue
    grade_sum += float(grade_list[-2]) # 학점의 총합
    grade_subject_sum += (float(grade_list[-2]) * grade_dc[grade_list[-1]]) # 학점 * 과목평점의 합

grade_avg = grade_subject_sum / grade_sum
print(grade_avg)