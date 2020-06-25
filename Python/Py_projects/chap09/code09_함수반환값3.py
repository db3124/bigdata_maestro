## 함수 선언
def multi(v1, v2):
    return v1 + v2, v1 - v2 # 다중값 반환    이 아니라 tuple을 반환하는 것.

## 메인 코드
res1, res2 = multi(100, 300)

print('multi()에서 돌려준 값 ==> %d, %d' %(res1, res2))

# res = multi(100, 300)
#
# print(res, type(res))
# print('multi()에서 돌려준 값 ==> %d, %d' %(res[0], res[1]))
