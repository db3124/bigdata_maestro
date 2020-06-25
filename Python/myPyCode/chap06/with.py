with open('myFile2.txt', 'w') as f:
    f.write('File read/write test2: line1\n')
    f.write('File read/write test2: line2\n')
    f.write('File read/write test2: line3\n')

with open('myFile2.txt', 'r') as f:
    file_string = f.read()
    print(file_string)