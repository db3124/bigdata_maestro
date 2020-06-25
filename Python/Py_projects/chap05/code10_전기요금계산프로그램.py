'''
    [전기요금 계산 프로그램]

    전기 사용량을 입력 받아 사용 요금을 출력하는 프로그램을 작성한다.

    기본요금 + 사용량 * kw당 요금 + 세금
    세금은 전체 사용 요금의 9%이며, 요금 적용 기준은 다음과 같다.

    소수점 이하는 버린다.

    [실행 결과]
    전기 사용량을 입력하세요(kw): 270
    이번달 요금은 26297 원입니다.
    1. 기본요금 1130
    2. kw당 요금 52*100 + 88.5*100 + 127.8*70
    3. 세금 (1+2)*0.09
    4. 최종 1+2+3
'''

kw = int(input('전기 사용량을 입력하세요(kw): '))

if kw in range(1, 101):
    basic = 370
    perKw = kw * 52.0
    tax = (basic + perKw) * 0.09
    total = basic + perKw + tax
    print('이번달 요금은 %d 원입니다.' % int(total))
elif kw in range(101, 201):
    basic = 660
    perKw = 100 * 52.0 + (kw - 100) * 88.5
    tax = (basic + perKw) * 0.09
    total = basic + perKw + tax
    print('이번달 요금은 %d 원입니다.' % int(total))
elif kw in range(201, 301):
    basic = 1130
    perKw = 100 * (52.0 + 88.5) + (kw - 200) * 127.8
    tax = (basic + perKw) * 0.09
    total = basic + perKw + tax
    print('이번달 요금은 %d 원입니다.' % int(total))
elif kw in range(301, 401):
    basic = 2710
    perKw = 100 * (52.0 + 88.5 + 127.8) + (kw - 300) * 184.3
    tax = (basic + perKw) * 0.09
    total = basic + perKw + tax
    print('이번달 요금은 %d 원입니다.' % int(total))
elif kw in range(401, 501):
    basic = 5130
    perKw = 100 * (52.0 + 88.5 + 127.8 + 184.3) + (kw - 400) * 274.3
    tax = (basic + perKw) * 0.09
    total = basic + perKw + tax
    print('이번달 요금은 %d 원입니다.' % int(total))
elif kw > 500:
    basic = 9330
    perKw = 100 * (52.0 + 88.5 + 127.8 + 184.3 + 274.3) + (kw - 500) * 494.0
    tax = (basic + perKw) * 0.09
    total = basic + perKw + tax
    print('이번달 요금은 %d 원입니다.' % int(total))