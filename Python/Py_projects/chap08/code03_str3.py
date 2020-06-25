'''
    dir(str)
    str method

    # 문자열 찾기
    'count', 'find', 'rfind', 'index', 'rindex', 'startswith', 'endswith'

    # 문자열 공백 삭제 및 변경하기(문자열 앞뒤 공백, 개행, 특정 문자 삭제)
    'strip', 'rstrip', 'lstrip', 'replace'

    # 문자열 분리 및 결합하기(문자열의 공백, 개행, 특정 문자를 기준으로)
    'split', 'splitlines', ★'join'

    # ★함수명에 대입하기 -> 빌트인 함수
    map

    # 문자열 정렬하기, 채우기
    'center', 'ljust', 'rjust', 'zfill'

    # ★문자열 구성 파악하기: 데이터 검사할 때 많이 쓰는 것들
    'isdigit', 'isalpha', 'isalnum', 'islower', 'isupper', 'isspace',

    # 그 외
    'capitalize', 'casefold', , 'encode', 'expandtabs',  'format', 'format_map',
    'isascii', 'isdecimal',  'isidentifier', 'isnumeric', 'isprintable', 'istitle',
    'lower',  'maketrans', 'partition', 'rpartition', 'rsplit', 'swapcase',
    'title', 'translate', 'upper'
'''

# # join(): 구분자를 이용하여 하나의 문자열로 통합할 때
# addr = ['서울시', '강남구', '방배동', '우성아파트', '1402호']
#
# # 연결할 때 쓰는 구분자
# my_sep = ' '
#
# new_addr = my_sep.join(addr)
# print(new_addr)

# map()
ymd = input('년 월 일을 입력하세요: ')

ymd = ymd.split()

print(ymd)

print(map(int, ymd))

print(list(map(int, ymd)))




# ymd[0] = int(ymd[0])
# ymd[1] = int(ymd[1])
# ymd[2] = int(ymd[2])

# for i in range(len(ymd)):
#     ymd[i] = int(ymd[i])

# print(ymd)

