'''
    [동전 교환 프로그램]
    사용자에게 교환할 금액을 입력으로 받아 동전으로 교환하는
    프로그램을 작성하세요.

    단, 하나의 변수만 사용하세요!
    
    [프로그램 실행 예]
    교환할 금액을 입력하세요: 7777
    500원짜리 동전: 15개
    100원짜리 동전: 2개
    50원짜리 동전: 1개
    10원짜리 동전: 2개
    나머지 금액: 7원
'''

money = int(input('교환할 금액을 입력하세요: '))

print('\n%15s %2d개' % ("500원짜리 동전: ", money // 500))

money = money % 500
print('%15s %2d개' % ("100원짜리 동전: ", money // 100))

money = money % 100
print('%15s %2d개' % ("50원짜리 동전: ", money // 50))

money = money % 50
print('%15s %2d개' % ("10원짜리 동전: ", money // 10))

money = money % 10
print('%15s %2d원' % ("나머지 금액: ", money))






'''
price = int(input('교환할 금액을 입력하세요: '))

price = price // 500 + price //  100 + price //50 + price // 10 + price //  1


print("{0:d} {1:d} {2:d} {3:d} {4:d}".format(price // 500,
                                       (price - price // 500) // 100,
                                       (price - price // 500 - price // 100) // 50,
                                       (price - price // 500 - price // 100 - price // 50) // 10,
                                       (price - price // 500 - price // 100 - price // 50 - price //10) // 1))
'''


'''
print('500원짜리 동전: ', price, '개', sep='')

baek = (price - obaek * 500) // 100
print('100원짜리 동전: ', baek, '개', sep='')

osib = (price - obaek * 500 - baek * 100) // 50
print('50원짜리 동전: ', osib, '개', sep='')

sib = (price - obaek * 500 - baek * 100 - osib * 50) // 10
print('10원짜리 동전: ', sib, '개', sep='')

others =  (price - obaek * 500 - baek * 100 - osib * 50 - sib * 10)
print('나머지 금액: ', others, '원', sep='')

'''






'''
print('%15s' % '500원짜리 동전: ', '%10d개' % obaek)
print('%15s' % '100원짜리 동전: ', '%10d개' % baek)
print('%15s' % '50원짜리 동전: ', '%10d개' % osib)
print('%15s' % '10원짜리 동전: ', '%10d개' % sib)
print('%15s' % '나머지 금액: ', '%10d원' % baek)
'''
