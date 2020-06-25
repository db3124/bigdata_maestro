f = open('two_times_table.txt', 'r')

while True:
    line = f.readline()

    if line:
        print(line, end = '')

    else:
        f.close()
        break
