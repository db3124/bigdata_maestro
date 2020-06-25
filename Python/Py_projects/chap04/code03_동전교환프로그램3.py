'''
    [동전 교환 프로그램]
    사용자에게 구매한 세 상품의 요금을 입력 받은 후 지불할 금액을 입력 받아
    동전으로 교환하는 프로그램을 작성하세요.

    
    [프로그램 실행 예]
    구매하신 세 상품의 금액을 입력하세요: 3000 400 30
    지불하실 금액을 입력하세요: 10000

    거스름돈: 6570
    =============================
          5000원권: 1장
          1000원권: 1장
    500원짜리 동전: 1개
    100원짜리 동전: 0개
     50원짜리 동전: 1개
     10원짜리 동전: 2개
'''

price = input('구매하신 세 상품의 금액을 입력하세요: ')

price = price.split(' ') # 여러개의 토큰으로 분리할 수 있다.

money = int(input('지불하실 금액을 입력하세요: '))

# print(charge[0], charge[1], charge[2])

# 거스름돈
# price = int(price[0]) + int(price[1]) + int(price[2])
charge = money - (int(price[0]) + int(price[1]) + int(price[2]))

# 메인 함수 부분 #
print('\n%15s %2d원' % ('거스름돈: ', charge))

sep = '================================'
print(sep)

print('\n%15s %2d장' % ("5000원권 지폐: ", (charge) // 5000))

charge = charge % 5000
print('%15s %2d장' % ("1000원권 지폐: ", charge // 1000))

charge = charge % 1000
print('%15s %2d개' % ("500원짜리 동전: ", charge // 500))

charge = charge % 500
print('%15s %2d개' % ("100원짜리 동전: ", charge // 100))

charge = charge % 100
print('%15s %2d개' % ("50원짜리 동전: ", charge // 50))

charge = charge % 50
print('%15s %2d개' % ("10원짜리 동전: ", charge // 10))

charge = charge % 10
print('%15s %2d원' % ("나머지 금액: ", charge))
