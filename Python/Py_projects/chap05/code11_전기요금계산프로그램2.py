'''
    [전기요금 계산 프로그램]

    전기 사용량을 입력 받아 사용 요금을 출력하는 프로그램을 작성한다.

    기본요금 + 사용량 * kw당 요금 + 세금
    세금은 전체 사용 요금의 9%이며, 요금 적용 기준은 다음과 같다.

    [기본요금]            [kw당 요금]
       370     1~100kw      52.0
       660    101~200kw     88.5
      1130    201~300kw    127.8
      2710    301~400kw    184.3
      5130    401~500kw    274.3
      9330    500kw 초과    494.0

    [실행 결과]
    전기 사용량을 입력하세요(kw): 270
    이번달 요금은 26297 원입니다.
    1. 기본요금 1130
    2. kw당 요금 52*100 + 88.5*100 + 127.8*70
    3. 세금 (1+2)*0.09
    4. 최종 1+2+3 (소수점 이하는 버린다.)
'''

basic = [370, 660, 1130, 2710, 5130, 9330]

perKw = [52.0, 88.5, 127.8, 184.3, 274.3, 494.0]

accumKw = [100 * perKw[0],
           100 * (perKw[0] + perKw[1]),
           100 * (perKw[0] + perKw[1] + perKw[2]),
           100 * (perKw[0] + perKw[1] + perKw[2] + perKw[3]),
           100 * (perKw[0] + perKw[1] + perKw[2] + perKw[3] + perKw[4]),
           100 * (perKw[0] + perKw[1] + perKw[2] + perKw[3] + perKw[4])]

charge, tax = 0, 0.09

kw = int(input('전기 사용량을 입력하세요(kw): '))

level = int(kw / 100)

charge = basic[level]

charge += accumKw[level -1]

charge += (kw - 100 * level) * perKw[level]

tax *= charge
charge += tax

print('이번달 요금은 %d 원입니다.' % int(charge))
