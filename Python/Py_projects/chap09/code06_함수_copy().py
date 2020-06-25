## 전역변수 선언
lst = [10, 20, 30, 40]
lstCopy = lst.copy()

## 함수 선언
def mutableTest(lst):
    for i in range(len(lst)):
        lst[i] = lst[i] * 2

def printLst(lst):
    for val in lst:
        print(val, end='  ')

    print('\n')

# 메인 코드
# 이렇게 쓰면 원본데이터를 수정해 버리게 된다.
# 따라서 copy()를 통해 복제본을 만들어 사용한다.
# mutableTest(lst)

printLst(lst)

mutableTest(lstCopy)
printLst(lst)

