'''
    [월의 마지막 일자 반환 프로그램]

    사용자에게 년, 월을 입력으로 받아 입력한 년, 월의 마지막 날을 반환한다.

    실행 예 1:::

    년 월을 입력하세요: 2020 2
    입력하신 2020년 2월의 마지막 날을 29일입니다.

    실행 예 2:::

    년 월을 입력하세요: 2020 6
    입력하신 2020년 6월의 마지막 날을 29일입니다.
    ============================================
    [알고리즘]
    각월은 큰달, 작은달로 구분된다.
    큰달: 1, 3, 5, 7, 8, 10, 12: 31일
    작은달: 4, 6, 8, 9, 11: 30일
    2월: 윤년은 29일 평년에는 28일
'''

user = input('년 월을 입력하세요: ').split(' ')

userYear = int(user[0])

userMonth = int(user[1])

# True면 윤년
leap = (userYear % 4 == 0 and userYear % 100 != 0 or userYear % 400 == 0)

bigMonth = [1, 3, 5, 7, 8, 10, 12]

smallMonth = [4, 6, 9, 11]

if leap == True:
    if userMonth in bigMonth:
        print('입력하신 %d년 %d월의 마지막 날은 %d입니다.' % (userYear, userMonth, 31))
    elif userMonth in smallMonth:
        print('입력하신 %d년 %d월의 마지막 날은 %d입니다.' % (userYear, userMonth, 30))
    elif userMonth == 2:
        print('입력하신 %d년 %d월의 마지막 날은 %d입니다.' % (userYear, userMonth, 29))
    else:
        print('잘못된 입력입니다.')

if leap == False:
    if userMonth in bigMonth:
        print('입력하신 %d년 %d월의 마지막 날은 %d입니다.' % (userYear, userMonth, 31))
    elif userMonth in smallMonth:
        print('입력하신 %d년 %d월의 마지막 날은 %d입니다.' % (userYear, userMonth, 30))
    elif userMonth == 2:
        print('입력하신 %d년 %d월의 마지막 날은 %d입니다.' % (userYear, userMonth, 28))
    else:
        print('잘못된 입력입니다.')