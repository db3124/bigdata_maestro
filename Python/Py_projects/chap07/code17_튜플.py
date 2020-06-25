tpl1 = (10, 20, 30)
tpl2 = 'a', 'b', 'c'

tpl3 = (10)
tpl4 = 10

tpl5 = (10,)
tpl6 = 10,

# tpl1.append(10)
tpl1 + tpl2 # 새로운 객체 생성
tpl7 = tpl1 * 3 # 새로운 객체 생성

# tuple의 method
tpl7.index(10)
tpl7.count(20)

# builtin 함수: container에서 사용 가능.
max(tpl7)
max(tpl2)

min(tpl7)
min(tpl2)

sum(tpl7)
sum(tpl2) # 숫자값이 아닌 container에서 오류
