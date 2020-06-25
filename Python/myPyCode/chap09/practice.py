'''
    국제번호를 제외한 번호만 출력하기
'''

phone_num = '+82-10-2345-6789'

ph_num_list = phone_num.split('-', maxsplit=1)

# print(ph_num_list)

print(ph_num_list[1])

