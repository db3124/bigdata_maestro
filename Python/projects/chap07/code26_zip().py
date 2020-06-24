foods = ['떡볶이', '짜장면', '라면', '피자', '맥주', '치킨', '삼겹살']
sides = ['오뎅', '단무지', '김치']

for food, side in zip(foods, sides):
    print(food, '--->', side)

tupList = list(zip(foods, sides))

# zip()으로 묶인 두 개의 리스트를 바로 dict 객체로 변환
# 많이 사용하는 방법
dic = dict(zip(foods, sides))

print(tupList)
print(dic)
