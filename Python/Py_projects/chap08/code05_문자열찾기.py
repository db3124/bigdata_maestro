'''
    dir(str)
    str method

    # 문자열 찾기
    'count', 'find', 'rfind', 'index', 'rindex', 'startswith', 'endswith'

'''
str1 = '파이썬 공부는 즐겁습니다. 물론 모든 공부가 다 재미있지는 않죠. ^^'

# 1. 찾을 문자열이 몇 개 들어 있는지 개수 반환
str1.count('공부')

# 2. 찾을 문자열을 왼쪽 끝부터 찾기 시작해서 몇 번째 인덱스에 위치하는지 찾음
str1.find('공부')
str1.find('공부', 5) # 찾기 시작할 위치 지정
str1.find('없다') # 찾을 문자열이 없으면 -1 반환

# 3. 찾을 문자열을 오른쪽 끝부터 찾기 시작해서 몇 번째 인덱스에 위치하는지 찾음
str1.rfind('공부')

# 4. 인덱스
str1.index('공부')
str1.index('없다') # 에러
str1.rindex('공부')

# 5.
str1.startswith('공부')
str1.startswith('공부', 10)
str1.endswith('^^')