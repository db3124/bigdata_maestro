'''
    """
    [변환 함수]
    파이썬에서는 타입의 이름과 같은 이름의 변환 함수를 제공한다.

    list()
    tuple()

    ========Py_projects/chap03/code11========
    int()
    float()
    bool()
    str()

'''

# list(): 문자열, 튜플을 list로
list('abcd')

tpl = (1, 2, 3, 4)
list(tpl)

# tuple(): 문자열, 리스트를 tuple로
tuple('abcd')
tuple([1, 2, 3, 4])
