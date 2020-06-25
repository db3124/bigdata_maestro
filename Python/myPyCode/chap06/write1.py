import os
# 운영체제 관련 기능 제공하는 모듈

# get current working directory
os.getcwd()

# try 영역에서 오류가 발생할 때만 except 영역이 실행됨.
try:
    fileName = input('파일명을 입력하세요: ')
    f = open(fileName, 'rt') # 'wt'
except:
    f = open('myFile.txt', 'a')

# 텍스트 파일로 기록할 때 한 줄이 끝났을 때 반드시 개행을 하라!!!
str1 = 'This is my third file.\n'
f.write(str1)

# 파일이 닫히면 파일 객체 f도 사라짐.
f.close()
