#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/lahiru/robotics/src/manipulator/DynamixelSDK/ros/dynamixel_sdk"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/lahiru/robotics/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/lahiru/robotics/install/lib/python2.7/dist-packages:/home/lahiru/robotics/build/dynamixel_sdk/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/lahiru/robotics/build/dynamixel_sdk" \
    "/usr/bin/python2" \
    "/home/lahiru/robotics/src/manipulator/DynamixelSDK/ros/dynamixel_sdk/setup.py" \
     \
    build --build-base "/home/lahiru/robotics/build/dynamixel_sdk" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/lahiru/robotics/install" --install-scripts="/home/lahiru/robotics/install/bin"
