'''
    [동전 교환 프로그램]
    사용자에게 교환할 금액을 입력으로 받아 동전으로 교환하는
    프로그램을 작성하세요.

    [프로그램 실행 예]
    교환할 금액을 입력하세요: 7777
    500원짜리 동전: 15개
    100원짜리 동전: 2개
    50원짜리 동전: 1개
    10원짜리 동전: 2개
    나머지 금액: 7원
'''

price = int(input('교환할 금액을 입력하세요: '))

obaek = price // 500

baek = (price - obaek * 500) // 100

osib = (price - obaek * 500 - baek * 100) // 50

sib = (price - obaek * 500 - baek * 100 - osib * 50) // 10

others =  (price - obaek * 500 - baek * 100 - osib * 50 - sib * 10)

print('%15s %5d개' % ('500원짜리 동전:', obaek))
print('%15s %5d개' % ('100원짜리 동전:', baek))
print('%15s %5d개' % ('50원짜리 동전:', osib))
print('%15s %5d개' % ('10원짜리 동전:', sib))
print('%15s %5d원' % ('나머지 금액:', others))
