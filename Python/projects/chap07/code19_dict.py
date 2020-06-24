dic  = {'one': 1, 'two': 2, 'three': 3, 'four': 4}

dic['one']

# dic['five']

# 새로운 키:값 추가
dic['six'] = 6

# dir(dict)
dic.get('one')

print(dic.get('five')) # None 값 반환
print(dic)
