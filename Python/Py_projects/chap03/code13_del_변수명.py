print('hello')

print = 'apple'

print('hello world')
# -> print 함수는 사용자 변수에 의해서 가려짐.

# 사용자 변수 print를 제거해야 시스템 변수 print를 사용할 수 있음
del print
