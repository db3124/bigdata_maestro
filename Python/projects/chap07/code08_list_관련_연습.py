lst = [30, 10, 20]
print('현재 리스트: %s' % lst)

lst.append(40)
print('lst.append(40)후의 리스트: %s' % lst)

lst.pop()
print('lst.pop()후의 리스트: %s' % lst)

lst.sort()
print('lst.sort()후의 리스트: %s' % lst)

lst.sort(reverse = True)
print('lst.sort(reverse = True)후의 리스트: %s' % lst)

lst.reverse()
print('lst.reverse()후의 리스트: %s' % lst)

# 같은 값이 여러개 있으면 첫 번째 값의 인덱스 반환
lst.index(10)
print('index(10)의 인덱스: %d' % lst.index(10))

lst.insert(1, 111)
print('lst.insert(1, 111)후의 리스트: %s' % lst)

# 같은 값이 여러개 있으면 첫 번째 값만 삭제
lst.remove(111)
print('lst.remove(111)후의 리스트: %s' % lst)

lst.extend([77, 88, 99])
print('lst.extend([77, 88, 99])후의 리스트: %s' % lst)

lst.append(10)
print('10의 개수: %d' % lst.count(10))

