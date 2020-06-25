num = input('출력할 구구단의 단을 입력하세요: ')

num = int(num)

with open('myFile3.txt', 'w') as f:

    for i in range(1, 10):
        str1 = '{} * {} = {}\n'.format(num, i, num * i)
        f.write(str1)

    print(f)

with open('myFile3.txt', 'r') as f:
    for line in f:
        print(line, end = '')