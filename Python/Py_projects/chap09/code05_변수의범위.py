'''
    block scope -> 파이썬에선 x. block 안에서 선언된 변수를 밖에서도 사용할 수 있다.

    function scope -> 함수 안에서 선언된 변수
    global scope -> 함수 밖에서 선언된 변수
'''
# block 안에서 선언된 변수를 밖에서도 사용할 수 있다. -> 즉, 전역변수이다.
for num in range(10):
    pass

print(num)

for num in range(10):
    forVar = num + 1

print(num, forVar)

'''
    전역변수는 웬만하면 쓰지 않는다.
    모든 함수가 변수를 공유하기 때문에 예상치 못한 값이 저장될 가능성이 높기 때문에.
    
'''