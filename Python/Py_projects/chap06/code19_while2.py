'''
    구구단
'''

dan = 2
num = 1

while num <= 9:
    while dan <= 9:
        if num == 0:
            print(' [ %d 단 ]' % dan, end='\t\t')
        else:
            print('%d * %d = %2d' % (dan, num, dan * num), end='\t\t')

        dan += 1

    dan = 2
    num += 1
    print()

# dan = 2
# num = 0
#
# while num <= 9:
#     if num == 0:
#         while dan <= 9:
#             print('[ %d 단 ]' % dan, end='\t\t')
#             dan += 1
#     else:
#         while dan <= 9:
#             print('%d * %d = %2d' % (dan, num, dan * num), end='\t\t')
#             dan += 1
#
#     dan = 2
#     num += 1
#     print()


# dan = 2
# num = 1

# while dan <= 9:
#     print('[ %d 단 ]' % dan)
#
#     while num <= 9:
#         print('%d * %d = %2d' % (dan, num, dan * num))
#         num += 1
#
#     dan += 1
#     num = 1
#     print()

# ============================================
# dan = int(input('구구단의 단을 입력하세요: '))
# num = 1
#
# print('[ %d 단 ]' % dan)
#
# while num <= 9:
#     print('%d * %d = %2d' % (dan, num, dan * num))
#     num += 1

