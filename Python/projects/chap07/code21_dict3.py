stu = {'학번': 1000, '이름': '홍길동', '학과': '컴퓨터학과'}

# for 반복문을 사용하여 stu 객체에 저장된 학생 정보를 출력하세요.

# .keys()
# for i in stu:
#     print(i, end = ' ')

# for key in stu.keys():
#     print(key, ':', stu.get(key))

# for value in stu.values():
#     print(value)

for key, value in stu.items():
    print(key, ': ', value)
