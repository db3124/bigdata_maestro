def funcTest(arg1, *vargs, darg = 10, **kargs):
    print(arg1)
    print(*vargs)
    print(darg)
    print(kargs)

    print('\n')

# funcTest('hello', 10, 20, 30, 40, 50, one=1, two=2, three=3, four=4)

funcTest('hello', 10, 20, 30, 40, 50, darg=124 ,one=1, two=2, three=3, four=4)