f = open('three_times_table.txt', 'wt')

for num in range(1, 10):
    format_string = '3 * {0} = {1}\n'.format(num, 3 * num)
    f.write(format_string)

f.close()

