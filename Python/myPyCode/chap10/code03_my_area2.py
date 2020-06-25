# from my_area import PI, square_area, circle_area
import my_area as area

print('pi =', area.PI)
print('square area =', area.square_area(5))
print('circle area =', area.circle_area(2))

# print(dir(area))

print('\n')
for value in dir(area):
    if not value.startswith('__'):
        print(value)