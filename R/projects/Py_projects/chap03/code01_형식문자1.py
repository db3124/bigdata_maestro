print("안녕하세요")

print("100")
print("%d" % 100)
print(type("%d" % 100))

print("100 + 100")
print("%d" % (100+100))

# 형식문자의 수와 입력으로 넣는 값의 수는 같아야 한다.
print("%d" % (100, 100)) # 오류 not all arguments converted during string formatting
print("%d %d" % 100) # 오류 not enough arguments for format string

print("%d / %d = %d" % (100, 200, 0.5))
print("%d / %d = %f" %  (100, 200, 0.5))

# 문자(열) 출력
print("%c" % "가") # 한글자 출력만 가능
print("%s" % "가나다")

# print() 항수를 사용한 깔끔한 출력
# 오른쪽 정렬이 기본
print("%d" % 123)
print("%5d" % 123) # 남은 자리는 공백
print("%05d" % 123) # 남은 자리를 0으로 채움

print("%-5d" % 123) # 왼쪽 정렬

print("%f" % 123.45) # 기본 소수점 이하 6자리로 나옴
print("%7.1f" % 123.45) # 총 7가지 출력(. 포함) 소수점 이하 1자리에 총 출력폭은 7자리
print("%07.1f" % 123.45)
print("%7.3f" % 123.45) 

print("%s" % "python")
print("%10s" % "python")

print("%-10s" % "python") # 왼쪽 정렬
