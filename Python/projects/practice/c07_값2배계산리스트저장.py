'''
    리스트 lst에 저장된 각 값의 두 배를 계산하여 원래의 리스트에 저장한 후
    리스트의 모든 내용을 출력하는 코드를 작성하세요.
'''

lst = [10, 20, 30, 40]

# for i in range(4):
#     lst.append(lst[i] * 2)

for i in range(len(lst)):
    lst[i] = lst[i] * 2

print(lst)