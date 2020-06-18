# print() 함수를 이용한 깔끔한 출력
name = input('영문 이름을 입력하세요: ')
kor = int(input('국어 점수를 입력하세요: '))
eng = int(input('영어 점수를 입력하세요: '))
math = int(input('수학 점수를 입력하세요: '))

sep = '=========='
sep_line = '%s%s%s%s%s' % (sep, sep, sep, sep, sep)
label = '%10s%10s%10s%10s%10s' % ('Name', 'Kor', 'Eng', 'Math', 'Total')
value = '%10s%10d%10d%10d%10d' % (name, kor, eng, math, kor + eng + math)

print('[학생정보]')
print(sep_line)
print(label)
print(sep_line)
print(value)

