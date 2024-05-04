# CMake generated Testfile for 
# Source directory: /home/lahiru/robotics/src/m-explore/explore
# Build directory: /home/lahiru/robotics/build/explore_lite
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_explore_lite_roslaunch-check_launch "/home/lahiru/robotics/build/explore_lite/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/lahiru/robotics/build/explore_lite/test_results/explore_lite/roslaunch-check_launch.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/lahiru/robotics/build/explore_lite/test_results/explore_lite" "/opt/ros/melodic/share/roslaunch/cmake/../scripts/roslaunch-check -o \"/home/lahiru/robotics/build/explore_lite/test_results/explore_lite/roslaunch-check_launch.xml\" \"/home/lahiru/robotics/src/m-explore/explore/launch\" ")
subdirs("gtest")
