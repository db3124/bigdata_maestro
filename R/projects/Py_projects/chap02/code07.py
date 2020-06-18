# 터틀 그래픽 프로그램 작성
import turtle

## 함수 선언 부분## 

## 변수 선언 부분 ##
myT = None # 초기화

## 메인(main) 코드 부분 ##
myT = turtle.Turtle()
myT.shape('square')

for i in range(0, 4):
    myT.forward(200)
    myT.right(90)

turtle.done()
