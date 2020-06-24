# continue: continue 이후의 문장은 무시하고 반복문의 처음으로 돌아가 다음번 값을 가져온다.(다음 값 없으면 반복문 종료)
sum = 0
for i in range(1, 101):
    if i % 3 == 0:
        continue

    sum += i

print('1~100까지 수 중 3의 배수를 제외한 합은? %d' % sum)

# ===============================================
# continue 이후의 문장은 무시하고 while 조건식으로 돌아간다.
sum = 0
num = 1
while num <= 100:
    if num % 3 == 0:
        num += 1 # 매우 중요한 문장. continue를 만나면 뒤 문장들이 다 무시되기 때문에 본 문장 한 번 더 작성
        continue

    sum += num
    num += 1

print('1~100까지 수 중 3의 배수를 제외한 합은? %d' % sum)
