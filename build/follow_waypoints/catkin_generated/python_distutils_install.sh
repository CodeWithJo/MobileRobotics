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

echo_and_run cd "/home/ja1411/FinalProject_ws/src/follow_waypoints"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ja1411/FinalProject_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ja1411/FinalProject_ws/install/lib/python2.7/dist-packages:/home/ja1411/FinalProject_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ja1411/FinalProject_ws/build" \
    "/usr/bin/python2" \
    "/home/ja1411/FinalProject_ws/src/follow_waypoints/setup.py" \
     \
    build --build-base "/home/ja1411/FinalProject_ws/build/follow_waypoints" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/ja1411/FinalProject_ws/install" --install-scripts="/home/ja1411/FinalProject_ws/install/bin"
