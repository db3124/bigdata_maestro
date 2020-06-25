# 문자열 분리
str1 = '에스프레소 아메리카노 카페라테 카푸치노'
str2 = 'one:two:three:four:five'

# 리스트로 반환
print(str1.split())
print(str2.split(':'))

# sep을 기준으로 maxplit만큼 분리해 리스트로 반환.
print(str1.split(maxsplit = 2))
