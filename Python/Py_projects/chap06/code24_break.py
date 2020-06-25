# break는 자신이 속한 반복문만 종료한다.
# 가장 상위문장에서 break를 한다면 부문장까지 다 종료
for i in range(5):
    print('i: %d' % i)

    for j in range(10):
        print('\tj: %d' % j)

        if j == 4:
            break

    if i == 2:
        break