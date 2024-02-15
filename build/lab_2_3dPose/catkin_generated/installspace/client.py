#!/usr/bin/env python2

from __future__ import print_function

import sys
import tf
import rospy
from lab_2_3dPose.srv import *
import csv
import time

def euler_to_quarternion_client(a, b, c, format):
    rospy.wait_for_service('euler_to_quarternion')

    try:
        convert = rospy.ServiceProxy('euler_to_quarternion', angles)
        resp1 = convert(a, b, c, format)
        return [resp1.qx, resp1.qy, resp1.qz, resp1.qw]

    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)

    
def program(a, b, c, format):
    print("Requesting %s, %s, %s, %s" %(a, b, c, format))

    result = euler_to_quarternion_client(a, b, c, format)

    print("Result %s, %s, %s, %s " %(result[0], result[1], result[2], result[3]))


if __name__ == "__main__":
    datafile = open('/home/lahiru/robotics/src/lab_2_3dPose/scripts/exercise.csv', "r")

    data = csv.reader(datafile)
    for row in data:
        time.sleep(1)
        # print(row)
        if row == []:
            # print("Empty row")
            continue
        a = float(row[0])
        b = float(row[1])
        c = float(row[2])
        format = row[3].strip()
        
        program(a, b, c, format)
        # print(a, b, c, format)
    datafile.close()

    datafile.close()