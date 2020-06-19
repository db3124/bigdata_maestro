# 1. ~ 10. list 객체의 method
# 1. pop()
lst = [10, 20, 30]

val = lst.pop()

val

lst

# 2. sort()
lst2 = ['mango', 'banana', 'strawberry']

# sort한 것을 새롭게 저장하지 않았다. 알파벳 오름차순 정렬
lst2.sort()

# 역순
lst2.sort(reverse = True)

# 정렬 방식을 지정할 수 있다. key 파라미터의 인수는 함수명이어야 한다.
lst2.sort(key = len)

lst2.sort(key = len, reverse = True)

# 3. reverse()
lst2.reverse()

# 4. index()
lst2.index('banana')
lst2.append('banana')

# 5. insert()
lst2.insert(1, 'apple')

# 6. remove()
lst2.remove('banana')

# 7. extend()
lst2.extend(lst)

# 8. count()
lst2.insert(1, 10)
lst2.count(10)

# 9. clear()
lst2.clear()

# 10. del 명령어
del lst

# 11. ~ 13. 빌트인 함수
# 11. len(); container의 크기
len('apple')
len('대한민국')

# 12. copy()
lst = [20, 40, 10, 30]

lst2 = lst

lst2[2] = 111

# 13. sorted()
lst1 = [60, 90, 50, 80]
sorted(lst1)