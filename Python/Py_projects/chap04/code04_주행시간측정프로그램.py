'''
    [자동차 주행시간 측정  프로그램]
    거리(km)와 속력(km/h)을 입력 받은 후 시간을 계산하여 출력하는
    프로그램을 작성하세요.

    
    [프로그램 실행 예]
    거리(km)와 속력(km/h)을 입력하세요: 420 65

    전체 주행 시간은 6시간 27분 41.538초입니다.
'''

distSpeed = input('거리(km)와 속력(km/h)을 입력하세요: ')

distSpeed = distSpeed.split(' ')

dist = float(distSpeed[0])
speed = float(distSpeed[1])
leftTime = dist / speed
      
hour = leftTime // 1
leftTime = leftTime - hour

minute = leftTime * 60 // 1
leftTime = leftTime - minute / 60

second = leftTime * 3600

print('전체 주행 시간은 %d시간 %d분 %.3f초입니다.' % (hour, minute, second))


# =======================================================
distSpeed = input('거리(km)와 속력(km/h)을 입력하세요: ')

distSpeed = distSpeed.split(' ')

hour = int(distSpeed[0]) / int(distSpeed[1])
minute = (hour - int(hour)) * 60
second = (minute - int(minute)) * 60

print('전체 주행 시간은 %d시간 %d분 %.3f초입니다.' % (int(hour), int(minute), second))
