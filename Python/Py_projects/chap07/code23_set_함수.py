dir(dict)

'''
    'clear', 'copy'
    
    'get', 'items', 'keys', 'values'
    
    'fromkeys',
    'pop',
    'popitem',
    'setdefault',
    'update'
    
'''

# 1. fromkeys()
# keyList = ['one', 'two', 'three', 'four']
# newDic = dict.fromkeys(keyList, 10)
#
# print(newDic)

stu = {'학번': 1000, '이름': '홍길동', '학과': '컴퓨터학과'}

# 2. pop()
# val = stu.pop('학과')
# print(val)
# print(stu)

# 3. popitem()
# keyNVal = stu.popitem()
# print(keyNVal)
# print(stu)

# 4. setdefault()
# val = stu['학과']
# print(val)

# val = stu['학점']
# val = stu.get('학점')
# val = stu.setdefault('학점', 'D')
# print(val)

# KEY 값게 해당하는 값이 없으면 DEFAULT 값 반환,
# 해당 KEY 값이 있으면 원래의 VALUE를 반환한다.
# val = stu.setdefault('학과', '알수없음')
# print(val)

stu = {'학번': 1000, '이름': '홍길동', '학과': '컴퓨터학과'}
partStu = {'이름': '박찬호', '학과': '경영학과'}

# 5. update()
stu.update(partStu)
print(stu)
