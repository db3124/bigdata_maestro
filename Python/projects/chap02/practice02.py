# 터틀 그래픽 프로그램 작성
import turtle
import random

## 함수 선언 부분##
def screenLeftClick(x, y):
    global r, g, b

    r = random.random()
    g = random.random()
    b = random.random()
    turtle.color((r, g, b))
    
    tSize = random.randrange(1, 10)
    turtle.shapesize(tSize)

    turtle.stamp()
    turtle.pendown()
    turtle.goto(x, y)

def screenRightClick(x, y):
    turtle.penup()
    turtle.goto(x, y)    

## 변수 선언 부분 ##
pSize = 10
r, g, b = 0.0, 0.0, 0.0

## 메인(main) 코드 부분 ##
turtle.title('거북이로 그림 그리기')
turtle.shape('turtle')
turtle.pensize(pSize)

turtle.onscreenclick(screenLeftClick, 1)
turtle.onscreenclick(screenRightClick, 3)

turtle.done()