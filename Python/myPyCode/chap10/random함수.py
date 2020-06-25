import random

dice1 = random.randint(1, 6)
dice2 = random.randint(1, 6)

print('주사위 2개의 숫자: {0} {1}'.format(dice1, dice2))

menu = ['비빔밥', '된장찌개', '김치찌개', '불고기', '피자', '탕수육', '볶음밥']

print(random.choice(menu))