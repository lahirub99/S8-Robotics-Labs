import csv

datafile = open('lab_2_3dPose/scripts/exercise.csv', "r")

data = csv.reader(datafile)
for row in data:
    print(row)
    if row == []:
        print("Empty row")
        continue
    a = float(row[0])
    b = float(row[1])
    c = float(row[2])
    format = row[3].strip()
    #result = convert(a, b, c, format)
    print(a, b, c, format)

datafile.close()