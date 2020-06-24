ss = '파이썬짱!'

# 슬라이싱
ss[0]
ss[:1]
ss[::2]
ss[-1:-(len(ss) + 1):-1]

# +, * 연산
ss2 = '안녕하세요'
ss + ss2
ss * 3

# len(): 한글도 바이트로 계산하지 않고 문자로 계산
print(ss * 3, len(ss * 3))

# '파{0:s}이{0:s}썬{0:s}짱{0:s}!{0:s}'.format('$')
for ch in ss:
    print(ch + '$', end = '')