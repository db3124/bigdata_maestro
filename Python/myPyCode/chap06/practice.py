'''
    # 파일 열기
    f = open('myFile.txt', 'w')

    # 파일 쓰기
    try:
        f = open('myFile.txt', 'x')
        f.write('This is my fourth file.\n')
        f.close()
    except:
        print('except문입니다.')
        f = open('myFile.txt', 'a')
        f.write('This is my second file.\n')
        f.close()
'''

'''
    f = open('three_times_table.txt', 'r')
    
    line = f.readline()
    
    while line:
        print(line, end='')
        line = f.readline()
    
    f.close()
    
    # print(f.read())
    
    # 차례대로 줄을 가져옴
    line1 = f.readline()
    line2 = f.readline()
    line3 = f.readline()
    line4 = f.readline()
'''

'''
    f = open('three_times_table.txt', 'r')
    
    # print(f.readlines())
    # print(type(f.readlines()))
    
    lines = f.readlines()
    
    for line in lines:
        print(line, end='')
    
    for line in f.readlines():
        print(line, end='')
    
    # f(파일객체)만 써도 f.readlines()를 쓴 것과 같음.
    for line in f:
        print(line, end='')
    
    f.close()
'''

'''
    with open('myFile.txt', 'a') as f:
        f.write('append한 구문입니다.')
    
    with open('myFile.txt', 'r') as f:
        data = f.read()
        print(data)
'''

'''
    with open('myFile2.txt', 'wt') as f:
        f.write('first\n')
        f.write('second\n')
        f.write('third\n')
        f.write('fourth\n')
        f.write('fifth\n')
'''

with open('myFile2.txt', 'rt') as f:
    # f_read = f.read()
    # print(f_read)

    # f_readline = f.readline()
    # print(f_readline)

    # for line in f:
    #     print(line, end='')

    data = f.readlines()

    for i in range(len(data)):

        print(data[i], end = '')


